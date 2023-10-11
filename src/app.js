import { Controller, Component } from '@sndcds/mvc'


export default class App extends Controller {
  constructor(model, view) {
    super(model, view)
    this.onDistrictChanged = this.onDistrictChanged.bind(this)  // TODO: Description!
  }

  initApp(url, id) {
    this.data = this.model.getStorage('data')
    this.districtId = this.model.getStorage('districtId')

    if (this.districtId === null) {
      this.model.setDistrictId(id)
    }
    else {
      this.model.setDistrictId(this.districtId)
    }

    if (this.data === null) {
      this.fetchData(url)
    }
    else {
      this.onDataChanged(this.data)
    }
  }

  updateView() {
    this.setProperties('text-distict-details', { html: `<h1>Stadtteil: <strong>${this.model.districtName()}</strong></h1>` })

    const residentsInDestrict = this.valueByPath(['residents'])
    const residentsTotal = this.model.residentsTotal()
    const percent = residentsInDestrict / residentsTotal * 100 // TODO

    this.setProperties('residents-in-destrict', { value: this.formatNumber(residentsInDestrict) })
    this.setProperties('residents-percent-in-destrict', { value: this.formatNumber(percent) })
    this.setProperties('residents-total', { value: this.formatNumber(residentsTotal) })

    this.updateViewAgeSection()
    this.updateViewAgeSection2()
    this.updateSectionBirths()
    this.updateSectionAgeRatio()
    this.updateSectionMigrationBackground()
    this.updateSectionWork()
    this.updateSectionHousingBenefit()
    this.updateSectionHousingAssistance()

    this.setProperties('svg', { values: this.model.residentsInDistrictsArray() })
  }

  updateViewAgeSection() {
    const items = [
      { id: 'age-view-1', path: ['age_groups', 'age_to_under_18'] },
      { id: 'age-view-2', path: ['age_groups', 'age_18_to_under_30'] },
      { id: 'age-view-3', path: ['age_groups', 'age_30_to_under_45'] },
      { id: 'age-view-4', path: ['age_groups', 'age_45_to_under_65'] },
      { id: 'age-view-5', path: ['age_groups', 'age_65_to_under_80'] },
      { id: 'age-view-6', path: ['age_groups', 'age_80_and_above'] },
      { id: 'age-view-7', path: ['age_groups', 'age_0_to_under_7'] },
      { id: 'age-view-8', path: ['age_groups', 'age_60_and_above'] }
    ]

    let sum = 0
    items.forEach((item) => {
      sum += this.valueByPath(item.path)
    })

    let barOffset = 0
    items.forEach((item) => {
      const c = this.componentById(item.id)
      if (c !== undefined) {
        const d = this.valueByPath(item.path)
        const percentage = d / sum * 100
        c.setProperties(
          {
            value: this.formatNumber(d),
            percentage: this.formatNumber(percentage),
            barOffset
          })
        barOffset += percentage
      }
    })
  }

  updateViewAgeSection2() {
    const items = [
      { id: 'residents-0-18', path: ['age_groups', 'age_to_under_18'] },
      { id: 'residents-18-65', path: ['age_groups', 'age_18_to_under_65'] },
      { id: 'residents-65-above', path: ['age_groups', 'age_65_and_above'] }
    ]

    let sum = 0
    items.forEach((item) => {
      sum += this.valueByPath(item.path)
    })

    let barOffset = 0
    items.forEach((item) => {
      const c = this.componentById(item.id)
      if (c !== undefined) {
        const d = this.valueByPath(item.path)
        const percentage = d / sum * 100
        c.setProperties(
          {
            value: this.formatNumber(d),
            percentage: this.formatNumber(percentage),
            barOffset
          })
        barOffset += percentage
      }
    })
  }

  updateSectionBirths() {
    const births = this.valueByPath(['births'])
    const birthsTotal = this.model.birthsTotal()
    const percent = births / birthsTotal * 100
    const birthRate = this.valueByPath(['birth_rate'])

    this.setProperties('births', { value: this.formatNumber(births) })
    this.setProperties('births-percent', { value: this.formatNumber(percent) })
    this.setProperties('births-total', { value: this.formatNumber(birthsTotal) })
    this.setProperties('births-rate', { value: this.formatNumber(birthRate) })

    const c = this.componentById('births-chart')
    if (c !== undefined) {
      c.setProperties({ values: this.model.birthsInDistrictsArray() })
    }
  }

  updateSectionAgeRatio() {
    const ageRatio = this.valueByPath(['age_ratio'])
    this.setProperties('age-ratio', { value: this.formatNumber(ageRatio) })
  }

  updateSectionMigrationBackground() {
    const residents = this.valueByPath(['residents'])
    const german = this.valueByPath(['migration_background', 'german_citizenship'])
    const foreign = this.valueByPath(['migration_background', 'foreign_citizenship'])
    const total = german + foreign
    const percent = total / residents * 100
    const germanPercent = german / total * 100
    const foreignPercent = foreign / total * 100

    this.setProperties('residents-migration-background', { value: this.formatNumber(total) })
    this.setProperties('residents-migration-background-percent', { value: this.formatNumber(percent) })
    let barOffset = 0
    this.setProperties('german-citizenship', { value: this.formatNumber(german), percentage: this.formatNumber(germanPercent), barOffset })
    barOffset = germanPercent
    this.setProperties('foreign-citizenship', { value: this.formatNumber(foreign), percentage: this.formatNumber(foreignPercent), barOffset })
  }

  updateSectionWork() {
    const residentsInDestrict = this.valueByPath(['residents'])
    const employed = this.valueByPath(['employed_residents'])
    const employedPercent = employed / residentsInDestrict * 100
    const employedRate = this.valueByPath(['employment_rate'])
    const unemployed = this.valueByPath(['unemployed_residents'])
    const unemployedPercent = unemployed / residentsInDestrict * 100

    let barOffset = 0
    this.setProperties('employed-residents', { value: this.formatNumber(employed), percentage: this.formatNumber(employedPercent), barOffset })
    this.setProperties('employed-rate', { value: this.formatNumber(employedRate) })
    barOffset = employedPercent
    this.setProperties('unemployed-residents', { value: this.formatNumber(unemployed), percentage: this.formatNumber(unemployedPercent), barOffset })

    const config = [
      { id: 'percentage-sgb-iii', path: ['unemployment_characteristics', 'percentage_sgb_iii'], default: 0 },
      { id: 'percentage-sgb-ii', path: ['unemployment_characteristics', 'percentage_sgb_ii'], default: 0 },
      { id: 'percentage-foreign-citizenship', path: ['unemployment_characteristics', 'percentage_foreign_citizenship'], default: 0 },
      { id: 'percentage-female', path: ['unemployment_characteristics', 'percentage_female'], default: 0 },
      { id: 'percentage-age-under-25', path: ['unemployment_characteristics', 'percentage_age_under_25'], default: 0 }
    ]

    this.setValuePropertyByConfig(config)
  }

  updateSectionHousingBenefit() {
    const residentsInDestrict = this.valueByPath(['residents'])
    const housingBenefit = this.valueByPath(['housing_benefit'])
    const percent = housingBenefit / residentsInDestrict * 100

    this.setProperties('housing-benefit', { value: this.formatNumber(housingBenefit) })
    this.setProperties('housing-benefit-percent', { value: this.formatNumber(percent) })
  }

  updateSectionHousingAssistance() {
    const config = [
      { id: 'housing-assistance-general-consulting', path: ['housing_assistance', 'general_consulting'], default: 0 },
      { id: 'housing-assistance-notices-of-rent-arrears', path: ['housing_assistance', 'notices_of_rent_arrears'], default: 0 },
      { id: 'housing-assistance-termination-rent-arrears', path: ['housing_assistance', 'termination_rent_arrears'], default: 0 },
      { id: 'housing-assistance-termination-for-conduct', path: ['housing_assistance', 'termination_for_conduct'], default: 0 },
      { id: 'housing-assistance-action-for-eviction', path: ['housing_assistance', 'action_for_eviction'], default: 0 },
      { id: 'housing-assistance-eviction-notice', path: ['housing_assistance', 'eviction_notice'], default: 0 },
      { id: 'housing-assistance-eviction-carried', path: ['housing_assistance', 'eviction_carried'], default: 0 }
    ]

    const total = this.setValuePropertyByConfig(config)
    this.setProperties('housing-assistance-total', { value: this.formatNumber(total) })
  }


  onDataChanged(data) {
    this.model.setDataObject(data)
    this.model.setDistrictData(this.model.districtId)

    this.model.districtCount = data.length

    const d = { data: this.model.data.data, districtId: this.model.districtId }
    const c = this.componentById('district-select')
    if (c !== undefined) {
      c.setWithData(d)
      c.bindDistrictChanged(this.onDistrictChanged)
    }

    this.updateView()
  }

  /**
   * Get value by path from current model
   */
  valueByPath(path) {
    return this.model.districtData.valueByPath(path)
  }

  /**
   *
   */
  setValuePropertyByConfig(config) {
    let total = 0
    config.forEach((item, i) => {
      let value = this.valueByPath(item.path)
      if (value === null || value === undefined) {
        value = item.default
      }
      this.setProperties(item.id, { value: this.formatNumber(value) })
      total += value
    })

    return total
  }

  onDistrictChanged(id) {
    this.model.setDistrictId(id + 1)
    this.model.setDistrictData(id + 1)

    this.updateView()
  }

  static floatToString(value, decimals) {
    // TODO: Check! Is there a better/faster method?
    // TODO: Rename and move to controller
    if (decimals === undefined) {
      decimals = 2
    }
    return parseFloat(value.toFixed(decimals))
  }
}
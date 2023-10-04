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
    this.setProperties('text-distict-details', { 'html': `<h1>Stadtteil: <strong>${this.model.districtName()}</strong></h1>` })

    const residentsInDestrict = this.model.districtData.valueByPath(['district_detail', '2021', 'residents'])
    const residentsTotal = this.model.residentsTotal()
    const percent = residentsInDestrict / residentsTotal * 100 // TODO

    this.setProperties('residents-in-destrict', { 'value': this.formatNumber(residentsInDestrict) })
    this.setProperties('residents-percent-in-destrict', { 'value': this.formatNumber(percent) })
    this.setProperties('residents-total', { 'value': this.formatNumber(residentsTotal) })

    this.updateViewAgeSection()
    this.updateViewAgeSection2()
    this.updateSectionBirths()


    const c = this.componentById('svg')
    c.setProperties({ 'values': this.model.residentsInDistrictsArray() })
  }

  updateViewAgeSection() {
    const items = [
      { 'id': 'age-view-1', 'path': ['district_detail', '2021', 'age_groups', 'age_to_under_18'] },
      { 'id': 'age-view-2', 'path': ['district_detail', '2021', 'age_groups', 'age_18_to_under_30'] },
      { 'id': 'age-view-3', 'path': ['district_detail', '2021', 'age_groups', 'age_30_to_under_45'] },
      { 'id': 'age-view-4', 'path': ['district_detail', '2021', 'age_groups', 'age_45_to_under_65'] },
      { 'id': 'age-view-5', 'path': ['district_detail', '2021', 'age_groups', 'age_65_to_under_80'] },
      { 'id': 'age-view-6', 'path': ['district_detail', '2021', 'age_groups', 'age_80_and_above'] },
      { 'id': 'age-view-7', 'path': ['district_detail', '2021', 'age_groups', 'age_0_to_under_7'] },
      { 'id': 'age-view-8', 'path': ['district_detail', '2021', 'age_groups', 'age_60_and_above'] }
    ]

    let sum = 0
    items.forEach((item) => {
      sum += this.model.districtData.valueByPath(item.path)
    })

    let barOffset = 0
    items.forEach((item) => {
      const c = this.componentById(item.id)
      const d = this.model.districtData.valueByPath(item.path)
      const percentage = d / sum * 100
      c.setProperties(
        {
          'value': this.formatNumber(d),
          'percentage': this.formatNumber(percentage),
          barOffset
        })
      barOffset += percentage
    })
  }

  updateViewAgeSection2() {
    const items = [
      { 'id': 'residents-0-18', 'path': ['district_detail', '2021', 'age_groups', 'age_to_under_18'] },
      { 'id': 'residents-18-65', 'path': ['district_detail', '2021', 'age_groups', 'age_18_to_under_65'] },
      { 'id': 'residents-65-above', 'path': ['district_detail', '2021', 'age_groups', 'age_65_and_above'] }
    ]

    let sum = 0
    items.forEach((item) => {
      sum += this.model.districtData.valueByPath(item.path)
    })

    let barOffset = 0
    items.forEach((item) => {
      const c = this.componentById(item.id)
      const d = this.model.districtData.valueByPath(item.path)
      const percentage = d / sum * 100
      c.setProperties(
        {
          'value': this.formatNumber(d),
          'percentage': this.formatNumber(percentage),
          barOffset
        })
      barOffset += percentage
    })
  }

  updateSectionBirths() {
    const births = this.model.districtData.valueByPath(['district_detail', '2021', 'births'])
    const birthsTotal = this.model.birthsTotal()
    const percent = births / birthsTotal * 100

    this.setProperties('births', { 'value': this.formatNumber(births) })
    this.setProperties('births-percent', { 'value': this.formatNumber(percent) })
    this.setProperties('births-total', { 'value': this.formatNumber(birthsTotal) })
    this.setProperties('births-rate', { 'value': this.formatNumber(0) })  // TODO: Use the correct value from data


    const c = this.componentById('births-chart')
    c.setProperties({ 'values': this.model.birthsInDistrictsArray() })
  }

  onDataChanged(data) {
    this.model.setDataObject(data)
    this.model.setDistrictData(this.model.districtId)

    this.model.districtCount = data.length

    const d = { 'data': this.model.data.data, 'districtId': this.model.districtId }
    const c = this.componentById('district-select')
    c.setWithData(d)
    c.bindDistrictChanged(this.onDistrictChanged)

    this.updateView()
  }

  onDistrictChanged(id) {
    this.model.setDistrictId(id + 1)
    this.model.setDistrictData(id + 1)

    this.updateView()
  }
}
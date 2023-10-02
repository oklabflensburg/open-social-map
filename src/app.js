import { View, Controller } from '@sndcds/mvc'


export default class App extends Controller {
  /* eslint no-useless-constructor: 0 */
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

  renderAgeSection() {
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
      sum += this.getNestedValue(this.model.districtObject, item.path)
    })

    let barOffset = 0
    items.forEach((item) => {
      const c = this.componentById(item.id)
      const d = this.getNestedValue(this.model.districtObject, item.path)
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

  onDataChanged(data) {
    this.model.setDataObject(data)
    this.model.setDistrictObject(this.model.districtId)

    const d = { 'data': this.model.data, 'districtId': this.model.districtId }
    const c = this.componentById('district-select')
    c.setWithData(d)
    c.bindDistrictChanged(this.onDistrictChanged)

    this.renderAgeSection()
  }

  onDistrictChanged(id) {
    this.model.setDistrictId(id + 1)
    this.model.setDistrictObject(id + 1)

    this.renderAgeSection()
  }

  /**
     * Generates a random RGB color.
     *
     * @returns {string} A random RGB color string.
     */
  static randomColor() {
    const red = Math.floor(Math.random() * 256)
    const green = Math.floor(Math.random() * 256)
    const blue = Math.floor(Math.random() * 256)
    return `rgb(${red}, ${green}, ${blue})`
  }
}
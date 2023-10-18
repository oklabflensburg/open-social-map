import { Model, DataObject } from '@sndcds/mvc'


export default class AppModel extends Model {
  constructor() {
    super()

    this.dataObject = null
    this.districtCount = 0
    this.districtNames = null
    this.districtData = null
    this.districtId = null
  }

  bindDataChanged(callback) {
    this.onDataChanged = callback
  }

  setDataObject(data) {
    this.dataObject = new DataObject(data)
    this.districtCount = data.length
    this.districtNames = data.detail.map((item) => item.district_name)

    this.setStorage('data', data)
  }

  setDistrictId(districtId) {
    this.districtId = districtId

    this.setStorage('districtId', districtId)
  }

  setDistrictData(districtId) {
    const condition = (district) => district.district_id === districtId
    const items = this.dataObject.data.detail.filter(condition)

    if (items.length > 0) {
      this.districtData = new DataObject(items[0])
      this.setStorage('districtData', items[0])
    }
  }

  /**
   * Get district name.
   */
  districtName(districtId) {
    if (districtId === undefined) {
      districtId = this.districtId
    }

    return this.districtNames[districtId - 1]
  }

  /**
   * Get number of residents total for a specific year.
   */
  residentsTotal(...params) {
    return this.dataObject.data.summary.sum_residents
  }

  residentsInDistrictsArray(...params) {
    return this.dataObject.data.detail.map((item) => item.residents)
  }

  birthsTotal(...params) {
    const values = this.birthsInDistrictsArray()
    let sum = 0

    values.forEach((v) => {
      sum += v
    })

    return sum
  }

  birthsInDistrictsArray(...params) {
    return this.dataObject.data.detail.map((item) => item.births)
  }
}
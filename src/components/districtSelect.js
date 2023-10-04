import { Component } from '@sndcds/mvc'


export default class DistrictSelect extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)
    this.setProperties(setupData)
  }

  defaultClass() {
    return 'custom-district-select'
  }

  propertyNames() {
    return super.propertyNames()
  }

  build() {
    this.e = this.addDomElement('div')
  }

  setWithData(data) {
    const selectElement = this.domCreateElement('select')

    data.data.detail.forEach((item) => {
      const optionElement = this.domCreateElement('option')

      optionElement.value = item.district_id
      optionElement.textContent = item.district_name

      if (optionElement.value === data.districtId) {
        optionElement.selected = true
      }

      selectElement.appendChild(optionElement)
    })

    this.e.appendChild(selectElement)
  }

  bindDistrictChanged(handler) {
    const e = this.e.children.item(0)
    e.addEventListener('change', (event) => {
      const selectedOption = e.value
      handler(selectedOption - 1)
    })
  }
}
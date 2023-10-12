import { Component } from '@sndcds/mvc'


export default class DistrictSelect extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.events = null

    this.setProperties(setupData)
  }

  propertyNames() {
    const names = [
      'events'
    ]

    return super.propertyNames(names)
  }

  build() {
    this.e = this.addDomElement('select')

    if (this.events !== null) {
      this.events.forEach((item) => {
        this.e.addEventListener(item.event, () => item.handler(this))
      })
    }
  }

  setWithData(data) {
    data.data.detail.forEach((item) => {
      const optionElement = this.domCreateElement('option')

      optionElement.value = item.district_id
      optionElement.textContent = item.district_name

      if (optionElement.value === data.districtId) {
        optionElement.selected = true
      }

      this.e.appendChild(optionElement)
    })
  }

  setMessage(message) {
    if (typeof message === 'object') {
      Object.keys(message).forEach((key) => {
        if (key === 'value') {
          this.e.value = message[key]
        }
      })
    }
  }
}
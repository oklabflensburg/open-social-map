import { Component } from '@sndcds/mvc'


export default class DistrictSelect extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.setProperties(setupData)
  }

  getPropertyNames() {
    const names = []

    return super.getPropertyNames(names)
  }

  build() {
    this.e = this.addDomElement('select')

    if (this.events !== null) {
      this.events.forEach((item) => {
        this.e.addEventListener(item.event, () => item.handler(this))
      })
    }
  }

  setByModel(model) {
    model.districtNames.forEach((name, i) => {
      const optionElement = this.createDomElement('option')

      optionElement.value = i + 1
      optionElement.textContent = name

      if (optionElement.value === model.districtId) {
        optionElement.selected = true
      }

      this.e.appendChild(optionElement)
    })
  }

  handleMessage(message) {
    if (typeof message === 'object') {
      Object.keys(message).forEach((key) => {
        if (key === 'value') {
          this.e.value = message[key]
        }
        else if (key === 'setByModel') {
          this.setByModel(message[key])
        }
      })
    }
  }
}
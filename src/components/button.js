import { Component } from '@sndcds/mvc'

export default class Button extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.label = 'Button'
    this.events = null

    this.setProperties(setupData)
  }

  propertyNames() {
    const names = [
      'label', 'events'
    ]
    return super.propertyNames(names)
  }

  propertiesChanged() {
    if (this.e !== null) {
      this.e.innerText = this.label
    }
  }

  build() {
    this.e = this.addDomElement('button')
    this.e.innerText = this.label

    if (this.events !== null) {
      this.events.forEach((item) => {
        this.e.addEventListener(item.event, () => item.handler(this))
      })
    }

    this.buildChilds()
  }
}
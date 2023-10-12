import { Component } from '@sndcds/mvc'


export default class Text extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.html = null

    this.setProperties(setupData)
  }

  propertyNames() {
    const names = ['html']
    return super.propertyNames(names)
  }

  propertiesChanged() {
    if (this.e !== null) {
      this.e.innerHTML = this.html
    }
  }

  build() {
    this.e = this.addDomElement('text')
    this.e.innerHTML = this.html

    this.buildChilds()
  }

  addText(type, text) {
    const types = ['h1', 'h2', 'h3', 'h4', 'p']
    if (types.includes(type)) {
      this.html = `<${type}>text</${type}>`
    }
  }
}
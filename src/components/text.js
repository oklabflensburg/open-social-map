import { Component } from '@sndcds/mvc'


export default class Text extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.html = null

    this.setProperties(setupData)
  }

  getPropertyNames() {
    const names = ['html']
    return super.getPropertyNames(names)
  }

  propertiesChanged() {
    if (this.e !== null) {
      this.e.innerHTML = this.html
    }
  }

  build() {
    this.e = this.addDomElement('text')
    this.e.innerHTML = this.html
  }

  addText(type, text) {
    const types = ['h1', 'h2', 'h3', 'h4', 'p']

    if (types.includes(type)) {
      this.html = `<${type}>text</${type}>`
    }
  }
}
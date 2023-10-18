import { Component } from '@sndcds/mvc'


export default class Grid extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.setProperties(setupData)
  }

  build() {
    this.e = this.addDomElement('div')
    this.e.style.display = 'grid'
  }
}
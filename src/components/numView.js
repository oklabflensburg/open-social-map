import { Component } from '@sndcds/mvc'


/**
 * Component for displaying a label, value, bar and percentage.
 * Can be used for displaying numeric information, i. e. of statistics and other number related contexts.
 *
 * @since 20.9.2023
 */
export default class NumView extends Component {
  /**
     * Create a NumView.
     *
     * @param {Component} parent - The parent component.
     * @param {String} id - The id of the new Component.
     * @param {any} setupData - Optional set up data.
     */
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.label = 'Label'
    this.value = 0
    this.preText = null     // Text before the value, i. e. a currency.
    this.postText = null    // Text after the value, i. e. a unit.

    this.setProperties(setupData)
  }

  /**
     *  Build the DOM Elements for HTML rendering og the component.
     *
     *  This method mus be overridden in derived classes.
     *
     *  Styling:
     *  One solution is to assign classes to the emelemts.
     */
  build() {
    this.e = this.addDomElement('div')

    let a = this.e.appendChild(this.createDomElement('div'))

    a.style.textAlign = 'center'
    a.innerText = this.label
    a.className = 'label'

    a = this.e.appendChild(this.createDomElement('div'))

    a.style.textAlign = 'center'
    a.innerText = this.value
    a.className = 'value'
  }

  getPropertyNames() {
    const names = [
      'label',
      'value',
      'preText',
      'postText'
    ]

    return super.getPropertyNames(names)
  }

  propertiesChanged() {
    if (this.e !== null) {
      let text = this.value

      if (this.postText !== null) {
        text += this.postText
      }

      this.e.children.item(1).innerText = text
    }
  }


  gradient() {
    const p = parseFloat(this.percentage)
    const color1 = this.barColor1
    const color2 = this.barColor2
    const spot1 = `${this.barOffset}%`
    const spot2 = `${this.barOffset + 0.1}%`
    const spot3 = `${this.barOffset + p - 0.1}%`
    const spot4 = `${this.barOffset + p}%`

    return `linear-gradient(90deg, ${color1} 0%, ${color1} ${spot1}, ${color2} ${spot2}, ${color2} ${spot3}, ${color1} ${spot4})`
  }
}
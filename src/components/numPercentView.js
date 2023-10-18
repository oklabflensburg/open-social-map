import { Component } from '@sndcds/mvc'
import { App } from './../index.js'


/**
 * Component for displaying a label, value, bar and percentage.
 * Can be used for displaying numeric information, i. e. of statistics and other number related contexts.
 *
 * @since 20.9.2023
 */
export default class NumPercentView extends Component {
  /**
     * Create a NumPercentView.
     *
     * @param {Component} parent - The parent component.
     * @param {String} id - The id of the new Component.
     * @param {any} setupData - Optional set up data.
     */
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.label = 'Label'
    this.value = 100
    this.percentage = 10
    this.barOffset = 0
    this.barColor1 = '#999'
    this.barColor2 = '#333'

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

    a.innerText = this.label
    a.classList = 'label'

    a = this.e.appendChild(this.createDomElement('div'))

    a.innerText = this.value
    a.classList = 'value'

    const gradient = this.gradient()

    a = this.e.appendChild(this.createDomElement('div'))

    a.style.background = gradient
    a.classList = 'bar'

    a = this.e.appendChild(this.createDomElement('div'))

    a.innerText = `${this.percentage} %`
    a.classList = 'percentage'
  }

  getPropertyNames() {
    const names = [
      'label',
      'value',
      'percentage',
      'barOffset',
      'barColor1',
      'barColor2'
    ]

    return super.getPropertyNames(names)
  }

  propertiesChanged() {
    if (this.e !== null) {
      this.e.children.item(1).innerText = this.value
      this.e.children.item(2).style.background = this.gradient()
      this.e.children.item(3).innerText = `${this.percentage} %`
    }
  }


  gradient() {
    const p = parseFloat(this.percentage)

    const color1 = this.barColor1
    const color2 = this.barColor2

    const spot1 = App.numberToString(this.barOffset)
    const spot2 = App.numberToString(this.barOffset + 0.1)
    const spot3 = App.numberToString(this.barOffset + p - 0.1)
    const spot4 = App.numberToString(this.barOffset + p)

    return `linear-gradient(90deg, ${color1} 0%, ${color1} ${spot1}%, ${color2} ${spot2}%, ${color2} ${spot3}%, ${color1} ${spot4}%)`
  }
}
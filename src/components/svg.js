import { Component } from '@sndcds/mvc'


export default class Svg extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.html = null

    this.setProperties(setupData)
  }

  defaultClass() {
    return 'custom-svg'
  }

  propertyNames() {
    return super.propertyNames([])
  }

  propertiesChanged() {
  }

  build() {
    // Create an SVG element
    this.e = document.createElementNS('http://www.w3.org/2000/svg', 'svg')

    // Set attributes for the SVG element
    this.e.setAttribute('width', '400px')
    this.e.setAttribute('viewBox', '0 0 1200 800')
    this.e.setAttribute('version', '1.1')
    this.e.setAttribute('xmlns', 'http://www.w3.org/2000/svg')
    this.e.setAttribute('xmlns:xlink', 'http://www.w3.org/1999/xlink')
    this.e.setAttribute('xml:space', 'preserve')
    this.e.setAttribute('style', 'fill-rule:evenodd;clip-rule:evenodd;')

    const filePath = './flensburg-map.svg'
    this.readFileAsString(filePath)   // TODO: Has to be replaced with a method from mvc
    this.domAddClasses(this.e, this.classList)
    this.parent.e.appendChild(this.e)

    this.buildChilds()
  }

  /**
   * Function to fetch and read a file as a string
   */
  readFileAsString(filePath) {
    fetch(filePath)
      .then((response) => response.text())
      .then((data) => {
        // Update the model with the fetched data
        // Muss aufgerufen werden, wenn Daten geladen und temporär in einem Object gespeichert werden
        this.e.innerHTML = data
      })
      .catch((error) => {
        console.error('Error fetching data:', error)
      })
  }
}
import { Component } from '@sndcds/mvc'


export default class Svg extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)

    this.filePath = null
    this.colors = null
    this.selectedPathIndex = null

    this.setProperties(setupData)
  }

  getPropertyNames() {
    const names = ['filePath', 'colors']

    return super.getPropertyNames(names)
  }

  propertiesChanged() {
  }

  handleMessage(message) {
    if (typeof message === 'object') {
      Object.keys(message).forEach((key) => {
        if (key === 'colors') {
          this.setColors(message[key])
        }
        else if (key === 'selectPath') {
          const selectedPath = this.e.getElementById(`path-${message[key]}`)
          const paths = this.e.querySelectorAll('path')

          paths.forEach((path, index) => {
            if (path !== selectedPath) {
              path.classList.remove('selected')
            }
            else {
              path.classList.add('selected')
            }
          })
        }
      })
    }
  }


  setColors(items) {
    if (typeof items === 'object') {
      Object.keys(items).forEach((key) => {
        if (key === 'all') {
          // Get all the <path> elements within the SVG
          const paths = this.e.querySelectorAll('path')

          // Loop through the paths and access their "d" attribute
          paths.forEach((path, index) => {
            path.style.fill = items[key]
          })
        }
        if (key.startsWith('!')) {
          // Get all the <path> elements within the SVG
          const paths = this.e.querySelectorAll('path')
          const excludePath = this.e.getElementById(key.substring(1))

          // Loop through the paths and access their "d" attribute
          paths.forEach((path, index) => {
            if (path !== excludePath) {
              path.style.fill = items[key]
            }
          })
        }
        else {
          const pathElement = this.e.getElementById(key)

          if (pathElement !== null) {
            pathElement.style.fill = items[key]
          }
        }
      })
    }
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

    this.buildPathsFromFile(this.filePath)
    this.addElementClasslist(this.e, this.classList)
    this.parent.e.appendChild(this.e)
  }

  /**
   *  Function to build paths from data in a file.
   */
  buildPathsFromFile(filePath) {
    fetch(filePath)
      .then((response) => response.json())
      .then((data) => {
        data.forEach((pathItem) => {
          const path = document.createElementNS('http://www.w3.org/2000/svg', 'path') // TODO: Move to library helper class.

          path.setAttribute('d', pathItem.data)
          path.setAttribute('id', `path-${pathItem.id}`)
          path.setAttribute('data-id', `${pathItem.id}`)
          path.setAttribute('class', 'clickable-path')  // TODO: Ability to set classList for items in SVG.

          if (this.events !== null) {
            this.events.forEach((event) => {
              path.addEventListener(event.type, () => event.handler(this, pathItem.id))
            })
          }

          // Append the new path to the SVG container
          this.e.appendChild(path)
        })
      })
      .catch((error) => {
        console.error('Error fetching data:', error)  // TODO: Give a more precise error message
      })
  }
}
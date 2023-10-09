import { Component } from '@sndcds/mvc'
import { App } from './../index.js'


export default class DemoComponent extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)
    this.values = null
    this.maxValue = 'auto'
    this.width = 100
    this.height = 100

    this.setProperties(setupData)
  }

  defaultClass() {
    return 'custom-demo-component'
  }

  propertyNames() {
    return super.propertyNames(['values', 'maxValue', 'width', 'height'])
  }

  propertiesChanged() {
    if (this.e !== null) {
      this.e.replaceChildren()
      this.buildSvgContent()
    }
  }


  build() {
    const svg = this.e = document.createElementNS('http://www.w3.org/2000/svg', 'svg')
    svg.setAttribute('width', this.width)
    svg.setAttribute('height', this.height)
    svg.setAttribute('viewBox', `0 0 ${this.width} ${this.height}`)

    this.domAddClasses(svg, this.classList)
    this.parent.e.appendChild(svg)

    this.buildSvgContent()

    // polygon.setAttribute('points', '20,4 50,1 47,50 0,30')

    this.buildChilds()
  }

  buildSvgContent() {
    if (this.values !== null) {
      if (Array.isArray(this.values)) {
        const n = this.values.length
        const gap = 4
        const w = (this.width - gap * (n - 1)) / n
        const svg = this.e

        let maxValue = 100
        if (this.maxValue === 'auto') {
          // TODO: Check this..., Math.max() has some limitations!
          maxValue = Math.max.apply(null, this.values)
        }
        else {
          maxValue = this.maxValue
        }

        const barsCount = this.values.length
        let sum = 0
        for (let i = 0; i < barsCount; i++) {
          const polygon = document.createElementNS('http://www.w3.org/2000/svg', 'polygon')
          svg.appendChild(polygon)

          const h = this.values[i] / maxValue * this.height
          const x = (w + gap) * i
          const y = this.height - h

          const x1 = App.floatToString(x)
          const x2 = App.floatToString(x + w)
          const y1 = App.floatToString(y)
          const y2 = App.floatToString(y + h)

          polygon.setAttribute('class', 'xxx')
          polygon.setAttribute('points', `${x1},${y1} ${x2},${y1} ${x2},${y2} ${x1},${y2}`)
          polygon.setAttribute('fill', '#0069f6')
          polygon.setAttribute('stroke', 'none')

          svg.appendChild(polygon)

          sum += this.values[i]
        }

        // Mean line
        {
          const polygon = document.createElementNS('http://www.w3.org/2000/svg', 'polygon')
          svg.appendChild(polygon)

          const mean = sum / barsCount
          const h = 1
          const x = 0
          const y = this.height - mean / maxValue * this.height

          const x1 = 0
          const x2 = App.floatToString(this.width)
          const y1 = App.floatToString(y)
          const y2 = App.floatToString(y + 0.5)

          polygon.setAttribute('points', `${x1},${y1} ${x2},${y1} ${x2},${y2} ${x1},${y2}`)
          polygon.setAttribute('fill', '#ccc')
          polygon.setAttribute('stroke', 'none')
          polygon.style.mixBlendMode = 'multiply' // Set the blend mode

          svg.appendChild(polygon)
        }
      }
    }
  }
}
import { Component } from '@sndcds/mvc'
import { App } from './../index.js'


export default class DemoComponent extends Component {
  constructor(parent, id, setupData) {
    super(parent, id, setupData)
    this.values = null
    this.maxValue = 'auto'
    this.totalValue = 0
    this.width = 100
    this.height = 100
    this.gap = 4

    this.setProperties(setupData)
  }

  defaultClass() {
    return 'custom-demo-component'
  }

  propertyNames() {
    return super.propertyNames(['values', 'maxValue', 'width', 'height', 'gap'])
  }

  propertiesChanged() {
    this.totalValue = this.values.reduce((sum, value) => sum + value, 0)

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

    this.buildChilds()
  }

  buildSvgContent() {
    // this.buildSvgBarChart1()
    this.buildSvgPiChart()
  }

  buildSvgPiChart() {
    if (this.values !== null) {
      if (Array.isArray(this.values)) {
        const svg = this.e
        const centerX = this.width / 2
        const centerY = this.height / 2
        const radius = Math.min(centerX, centerY) - 2
        const innerRadius = 20

        let startAngle = 0

        // Create a pie slice for each data point
        this.values.forEach((value, index) => {
          const endAngle = startAngle + (value / this.totalValue) * 360

          // Convert angles to radians
          const startAngleRad = (startAngle - 90) * (Math.PI / 180)
          const endAngleRad = (endAngle - 90) * (Math.PI / 180)

          // Calculate the slice's path
          const path = document.createElementNS('http://www.w3.org/2000/svg', 'path')
          const x1 = centerX + radius * Math.cos(startAngleRad)
          const y1 = centerY + radius * Math.sin(startAngleRad)
          const x2 = centerX + radius * Math.cos(endAngleRad)
          const y2 = centerY + radius * Math.sin(endAngleRad)

          const d = this.svgCreateDonutPath(centerX, centerY, startAngle, endAngle, innerRadius, radius)


          const largeArcFlag = value / this.totalValue > 0.5 ? 1 : 0
          // const d = `M ${Math.cos(startAngle) * radius} ${Math.sin(startAngle) * radius}
          // const d = `M ${centerX} ${centerY} L ${x1} ${y1} A ${radius} ${radius} 0 ${largeArcFlag} 1 ${x2} ${y2} Z`
          path.setAttribute('d', d)
          path.setAttribute('class', 'xxx')
          if (index & 0x1) {
            path.setAttribute('fill', '#999')
          }
          else {
            path.setAttribute('fill', '#ccc')
          }
          svg.appendChild(path)

          // Update the startAngle for the next slice
          startAngle = endAngle
        })
      }
    }
  }

  buildSvgBarChart1() {
    if (this.values !== null) {
      if (Array.isArray(this.values)) {
        const svg = this.e
        const n = this.values.length
        const gap = this.gap
        const w = (this.width - gap * (n - 1)) / n

        let maxValue = 100
        if (this.maxValue === 'auto') {
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

  svgCreateDonutPath(centerX, centerY, startAngle, endAngle, innerRadius, radius) {
    // Convert degrees to radians
    const startAngleRad = (startAngle - 90) * (Math.PI / 180) // Subtract 90 to start from the top
    const endAngleRad = (endAngle - 90) * (Math.PI / 180)

    // Calculate start and end points for the inner circle
    const innerStartX = centerX + innerRadius * Math.cos(startAngleRad)
    const innerStartY = centerY + innerRadius * Math.sin(startAngleRad)
    const innerEndX = centerX + innerRadius * Math.cos(endAngleRad)
    const innerEndY = centerY + innerRadius * Math.sin(endAngleRad)

    // Calculate start and end points for the outer circle
    const outerStartX = centerX + radius * Math.cos(startAngleRad)
    const outerStartY = centerY + radius * Math.sin(startAngleRad)
    const outerEndX = centerX + radius * Math.cos(endAngleRad)
    const outerEndY = centerY + radius * Math.sin(endAngleRad)

    // Determine if the arc is larger than 180 degrees
    const largeArcFlag = endAngle - startAngle <= 180 ? '0' : '1'

    // Construct the SVG path string
    const path = `
      M ${innerStartX},${innerStartY}
      L ${outerStartX},${outerStartY}
      A ${radius},${radius} 0 ${largeArcFlag} 1 ${outerEndX},${outerEndY}
      L ${innerEndX},${innerEndY}
      A ${innerRadius},${innerRadius} 0 ${largeArcFlag} 0 ${innerStartX},${innerStartY}
      Z
    `

    return path
  }
}
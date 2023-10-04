import { Model, View, Controller, Component } from '@sndcds/mvc'

import {
  App,
  AppModel,
  Grid,
  Text,
  DemoComponent,
  Button,
  DistrictSelect,
  NumView,
  NumPercentView
} from './index.js'


// Create model
const model = new AppModel()

// Create view
const view = new View()

// Create app
const app = new App(model, view)
app.configurate({ 'locale': 'de-DE' })

// Create views and components
{
  const section = new Grid(view, 'section-1', { 'classList': 'section apple padding-10' })
  new Button(section, 'button-1', { 'label': 'Hide', 'onClick': button1OnClick })
  new Button(section, 'button-2', { 'label': 'Show', 'onClick': button2OnClick })
  new DistrictSelect(section, 'district-select')

  const fastButtonSection = new Grid(view, 'fast-button-section', { 'classList': 'section arena padding-10' })
  for (let i = 1; i <= 13; i++) {
    new Button(fastButtonSection, `district-button-${i}`, { 'classList': '', 'label': i, 'tag': i, 'onClick': button2OnClick })
  }

  new Text(view, 'text-distict-details', { 'classList': 'supertext', 'html': '<h1>District</h>' })
}


// Section Einwohner*innen im Stadtteil
{
  new Text(view, 'text-1', { 'classList': 'supertext', 'html': '<h1>Einwohner*innen im Stadtteil</h>' })

  const section = new Grid(view, 'section-3', { 'classList': 'section banana padding-10' })

  const subView1 = new Grid(section, 'subview-2-1', { 'classList': 'section ibm' })

  const subView1_1 = new Grid(subView1, 'subview-2-1-1', { 'classList': 'section lenovo' })
  new NumView(subView1_1, 'residents-in-destrict', { 'label': 'Anzahl' })
  new NumView(subView1_1, 'residents-percent-in-destrict', { 'label': 'Anteil Stadt', 'postText': ' %' })
  new NumView(subView1_1, 'residents-total', { 'label': 'Stadt gesamt' })

  const subView1_2 = new Grid(subView1, 'subview-2-1', { 'classList': 'section lenovo' })
  for (let i = 1; i <= 8; i++) {
    const labels = ['0 - 18', '18 - 30', '30 - 45', '45 - 65', '65 - 80', '80+', '0 - 8', '60+']
    new NumPercentView(subView1_2, `age-view-${i}`, { 'classList': 'num-percent', 'label': labels[i - 1], 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })
  }

  const subView2 = new Grid(section, 'subview-2-2', { 'classList': 'section sgi' })

  new DemoComponent(subView2, 'svg', { 'classList': 'custom-demo-component', 'width': 200, 'height': 100, 'maxValue': 'auto', 'values': [10, 20, 30, 40, 50, 60, 70, 80, 90, 100] })
}


// Section Schule/Arbeit/Rente
{
  new Text(view, 'text-3', { 'classList': 'supertext', 'html': '<h1>Schule/Arbeit/Rente</h>' })

  const section = new Grid(view, 'section-4', { 'classList': 'section banana padding-10' })

  const subView1 = new Grid(section, 'subview-2-1', { 'classList': 'section lenovo' })
  new NumPercentView(subView1, 'residents-0-18', { 'classList': 'num-percent', 'label': '0 - 18', 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })
  new NumPercentView(subView1, 'residents-18-65', { 'classList': 'num-percent', 'label': '18 - 65', 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })
  new NumPercentView(subView1, 'residents-65-above', { 'classList': 'num-percent', 'label': '65+', 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })

  const subView2 = new Grid(section, 'subview-2-1', { 'classList': 'section sgi' })
  new DemoComponent(subView2, 'svg2', { 'classList': 'custom-demo-component', 'width': 200, 'height': 100, 'values': [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 10, 1000, 30] })
}


// Section Geburten
{
  new Text(view, 'text-4', { 'classList': 'supertext', 'html': '<h1>Geburten</h>' })

  const section = new Grid(view, 'section-5', { 'classList': 'section banana padding-10' })

  const subView1 = new Grid(section, 'subview-2-1', { 'classList': 'section lenovo' })
  new NumView(subView1, 'births', { 'classList': 'num-percent', 'label': 'Anzahl' })
  new NumView(subView1, 'births-percent', { 'classList': 'num-percent', 'label': 'Anteil Stadt', 'postText': ' %' })
  new NumView(subView1, 'births-total', { 'classList': 'num-percent', 'label': 'Stadt gesamt' })
  new NumView(subView1, 'births-rate', { 'classList': 'num-percent', 'label': 'Quote' })

  const subView2 = new Grid(section, 'subview-2-2', { 'classList': 'section sgi' })
  new DemoComponent(subView2, 'births-chart', { 'classList': 'custom-demo-component', 'width': 200, 'height': 100, 'maxValue': 'auto', 'values': [10, 20, 30, 40, 50, 60, 70, 80, 90, 100] })
}


app.buildView('root')

// Init app, must be called after configurate and buildView
app.initApp('./details.json', 13)

// Handlers
function button1OnClick(component) {
  for (let i = 2; i <= 5; i++) {
    const s = app.componentById(`section-${i}`)
    if (s !== undefined) {
      s.e.style.display = 'none'
    }
  }
}

function button2OnClick(component) {
  app.onDistrictChanged(component.tag - 1)
  console.debug(app.view.countDescendants())
  for (let i = 2; i <= 5; i++) {
    const s = app.componentById(`section-${i}`)
    if (s !== undefined) {
      s.e.style.display = 'grid'
    }
  }
}
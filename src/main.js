import { Model, View, Controller, Component } from '@sndcds/mvc'

import {
  App,
  AppModel,
  Grid,
  Text,
  Svg,
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
  new Button(section, 'button-1', { 'label': 'Hide', 'onClick': hideAction })
  new Button(section, 'button-2', { 'label': 'Show', 'onClick': showAction })
  new DistrictSelect(section, 'district-select')

  const fastButtonSection = new Grid(view, 'fast-button-section', { 'classList': 'section arena padding-10' })
  for (let i = 1; i <= 13; i++) {
    new Button(fastButtonSection, `district-button-${i}`, { 'classList': '', 'label': i, 'tag': i, 'onClick': setDistrictAction })
  }

  new Text(view, 'text-distict-details', { 'classList': 'supertext', 'html': '<h1>District</h>' })

  new Svg(view, 'district-map')
}


// Section Einwohner*innen im Stadtteil
{
  new Text(view, 'text-1', { 'classList': 'supertext', 'html': '<h1>Einwohner*innen im Stadtteil</h1>' })

  const section = new Grid(view, 'section-2', { 'classList': 'section banana padding-10' })

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

  const section = new Grid(view, 'section-3', { 'classList': 'section banana padding-10' })

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

  const section = new Grid(view, 'section-4', { 'classList': 'section banana padding-10' })

  const subView1 = new Grid(section, 'subview-2-1', { 'classList': 'section lenovo' })
  new NumView(subView1, 'births', { 'classList': 'num-percent', 'label': 'Anzahl' })
  new NumView(subView1, 'births-percent', { 'classList': 'num-percent', 'label': 'Anteil Stadt', 'postText': ' %' })
  new NumView(subView1, 'births-total', { 'classList': 'num-percent', 'label': 'Stadt gesamt' })
  new NumView(subView1, 'births-rate', { 'classList': 'num-percent', 'label': 'Quote' })

  const subView2 = new Grid(section, 'subview-2-2', { 'classList': 'section sgi' })
  new DemoComponent(subView2, 'births-chart', { 'classList': 'custom-demo-component', 'width': 200, 'height': 100, 'maxValue': 'auto', 'values': [10, 20, 30, 40, 50, 60, 70, 80, 90, 100] })
}


// Section Altenquotient
{
  new Text(view, 'text-4', { 'classList': 'supertext', 'html': '<h1>Altenquotient</h>' })

  const section = new Grid(view, 'section-5', { 'classList': 'section banana padding-10' })

  const subView1 = new Grid(section, 'subview', { 'classList': 'section lenovo' })
  new NumView(subView1, 'age-ratio', { 'classList': 'num-percent', 'label': 'Quotient' })

  const subView2 = new Grid(section, 'subview-2-2', { 'classList': 'section sgi' })
}


// Section Migrationshintergrund
{
  new Text(view, 'text-5', { 'classList': 'supertext', 'html': '<h1>Migrationshintergrund</h>' })

  const section = new Grid(view, 'section-6', { 'classList': 'section banana padding-10' })

  const subView1 = new Grid(section, 'subview', { 'classList': 'section lenovo' })
  new NumView(subView1, 'residents-migration-background', { 'classList': 'num-percent', 'label': 'Gesamt' })
  new NumView(subView1, 'residents-migration-background-percent', { 'classList': 'num-percent', 'label': 'Anteil', 'postText': ' %' })
  new NumPercentView(subView1, 'german-citizenship', { 'classList': 'num-percent', 'label': 'deutsch', 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })
  new NumPercentView(subView1, 'foreign-citizenship', { 'classList': 'num-percent', 'label': 'ausländisch', 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })

  const subView2 = new Grid(section, 'subview-2-2', { 'classList': 'section sgi' })
}


// Section Arbeitsmarkt und Beschäftigte
{
  new Text(view, 'text-5', { 'classList': 'supertext', 'html': '<h1>Arbeitsmarkt und Beschäftigte</h>' })

  const section = new Grid(view, 'section-7', { 'classList': 'section banana padding-10' })

  const subView1 = new Grid(section, 'subview', { 'classList': 'section ibm' })
  const row1 = new Grid(subView1, 'subview-2-1-1', { 'classList': 'section lenovo' })

  new NumPercentView(row1, 'employed-residents', { 'classList': 'num-percent', 'label': 'Beschäftige', 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })
  new NumPercentView(row1, 'unemployed-residents', { 'classList': 'num-percent', 'label': 'Arbeitslose', 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })

  new NumView(row1, 'employed-rate', { 'classList': 'num-percent', 'label': 'BQ', 'postText': ' %' })

  const row2 = new Grid(subView1, 'subview-2-2', { 'classList': 'section lenovo' })
  new NumView(row2, 'percentage-sgb-iii', { 'classList': 'num-percent', 'label': 'nur SGB III', 'postText': ' %' })
  new NumView(row2, 'percentage-sgb-ii', { 'classList': 'num-percent', 'label': 'nur SGB II', 'postText': ' %' })
  new NumView(row2, 'percentage-foreign-citizenship', { 'classList': 'num-percent', 'label': 'ausländisch', 'postText': ' %' })
  new NumView(row2, 'percentage-female', { 'classList': 'num-percent', 'label': 'Frauen', 'postText': ' %' })
  new NumView(row2, 'percentage-age-under-25', { 'classList': 'num-percent', 'label': 'jünger als 25', 'postText': ' %' })


  const subView2 = new Grid(section, 'subview-2-2', { 'classList': 'section sgi' })
}


app.buildView('root')

// Init app, must be called after configurate and buildView
app.initApp('./details.json', 1)

// Handlers
function hideAction(component) {
  for (let i = 2; i <= 7; i++) {
    const s = app.componentById(`section-${i}`)
    if (s !== undefined) {
      s.e.style.display = 'none'
    }
  }
}

function showAction(component) {
  for (let i = 2; i <= 7; i++) {
    const s = app.componentById(`section-${i}`)
    if (s !== undefined) {
      s.e.style.display = 'grid'
    }
  }
}

function setDistrictAction(component) {
  app.onDistrictChanged(component.tag - 1)
}
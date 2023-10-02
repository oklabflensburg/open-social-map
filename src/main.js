import {
  Model,
  View,
  Controller,
  Component
} from '@sndcds/mvc'

import {
  App,
  AppModel,
  Grid,
  DemoComponent,
  Button,
  DistrictSelect,
  NumPercentView,
  VBarsView
} from './index.js'


// Sozialatlas

// Create model
const model = new AppModel()

// Create view
const view = new View()

// Create Components
const section1 = new Grid(view, 'section-1', { 'classList': 'section apple padding-10' })
new Button(section1, 'button-1', { 'onClick': button1OnClick })
new Button(section1, 'button-2', { 'label': 'District 1', 'tag': 1, 'onClick': button2OnClick })
new Button(section1, 'button-3', { 'label': 'District 2', 'tag': 2, 'onClick': button2OnClick })
new DistrictSelect(section1, 'district-select')

const section2 = new Grid(view, 'section-2', { 'classList': 'section banana padding-10' })
const subView2_1 = new Grid(section2, 'subview-2-1', { 'classList': 'section ibm' })
const subView2_1_1 = new Grid(subView2_1, 'subview-2-1-1', { 'classList': 'section lenovo' })
for (let i = 1; i <= 3; i++) {
  const labels = ['Alpha', 'Beta', 'Gamma']
  new NumPercentView(subView2_1_1, `value-display-${i}`, { 'label': labels[i - 1], 'value': 123, 'percentage': 87.3, 'barOffset': 13.2, 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })
}

const subView2_1_2 = new Grid(subView2_1, 'subview-2-1', { 'classList': 'section lenovo' })
for (let i = 1; i <= 8; i++) {
  const labels = ['0 - 18', '18 - 30', '30 - 45', '45 - 65', '65 - 80', '80+', '0 - 8', '60+']
  new NumPercentView(subView2_1_2, `age-view-${i}`, { 'classList': 'num-percent', 'label': labels[i - 1], 'value': 123, 'percentage': 87.3, 'barOffset': 13.2, 'barColor1': '#d1e4fd', 'barColor2': '#0069f6' })
}

const subView2_2 = new Grid(section2, 'subview-2-2', { 'classList': 'section sgi' })
new VBarsView(subView2_2, 'vbar-1', { 'classList': 'custom-vbar' })

const section3 = new Grid(view, 'section-3', { 'classList': 'section arena padding-10' })
for (let i = 1; i <= 13; i++) {
  new Button(section3, `district-button-${i}`, { 'classList': '', 'label': i, 'tag': i - 1, 'onClick': button2OnClick })
}



/*
for (let i = 4; i <= 2; i++) {
    const labels = ['SUN', 'DEC', 'Apple', 'NeXT', 'HP', 'Compaq', 'Lenovo', 'sgi', 'Atari', 'Commodore', 'IBM']
    const randomIndex = Math.floor(Math.random() * labels.length)
    const label = labels[randomIndex]

    const percentage = Math.floor(Math.random() * 80)
    const barOffset = Math.floor(Math.random() * (100 - percentage))
    const setupData = {
        label,
        value: Math.floor(Math.random() * 1000),
        percentage,
        barOffset,
        barColor1: App.randomColor(),
        barColor2: App.randomColor()
    }

    new NumPercentView(container2, `pop-${i}`, setupData)
}
*/
// Create app
const app = new App(model, view)
app.configurate({ 'locale': 'de-DE' })
app.buildView('root')

// Init app, must be called after configurate and buildView
app.initApp('./details.json', 13)


// Handlers
function button1OnClick(component) {
  component.e.innerText = 'clicked!'
  const c = app.componentById('value-display-1')
  c.setProperties({ 'value': 987, 'barColor1': 'red', 'barColor2': 'yellow' })
  const s = app.componentById('section-2')
  s.e.style.display = 'none'
//    s.e.style.visibility = 'hidden'
}


function button2OnClick(component) {
  app.onDistrictChanged(component.tag)
  const n = app.view.countDescendants()
  const s = app.componentById('section-2')
  s.e.style.display = 'grid'
//    s.e.style.visibility = 'visible'
}
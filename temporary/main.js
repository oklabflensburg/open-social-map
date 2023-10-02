fetch('./static/flensburg_stadtbezirke.geojson', {
  method: 'GET'
})
  .then((response) => {
    return response.json()
  })
  .then((data) => {
    addDataBezirke(data)
  })
  .catch(function (error) {
    console.log(error)
  })

fetch('./static/flensburg_stadtteile.geojson', {
  method: 'GET'
})
  .then((response) => {
    return response.json()
  })
  .then((data) => {
    addData(data)
  })
  .catch(function (error) {
    console.log(error)
  })

const map = L.map('map', {
  maxZoom: 19
}).setView([54.7836, 9.4321], 13)

let prevLayerClicked = null

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
  maxZoom: 19,
  attribution:
    '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map)

let geocoder = L.Control.Geocoder.nominatim()

if (typeof URLSearchParams !== 'undefined' && location.search) {
  // parse /?geocoder=nominatim from URL
  let params = new URLSearchParams(location.search)
  let geocoderString = params.get('geocoder')

  if (geocoderString && L.Control.Geocoder[geocoderString]) {
    console.log('Using geocoder', geocoderString)
    geocoder = L.Control.Geocoder[geocoderString]()
  } else if (geocoderString) {
    console.warn('Unsupported geocoder', geocoderString)
  }
}

const osmGeocoder = new L.Control.geocoder({
  query: 'Flensburg',
  position: 'topright',
  placeholder: 'Adresse oder Ort',
  defaultMarkGeocode: false
}).addTo(map)

osmGeocoder.on('markgeocode', (e) => {
  const bounds = L.latLngBounds(
    e.geocode.bbox._southWest,
    e.geocode.bbox._northEast
  )
  map.fitBounds(bounds, { padding: [200, 200] })
})

let layerStyle = {
  bezirke: {
    color: '#fff',
    fillColor: 'red',
    fillOpacity: 0.4,
    opacity: 0.8,
    weight: 3
  },
  transparent: {
    color: 'transparent',
    fillColor: 'transparent',
    fillOpacity: 0.7,
    opacity: 0.6,
    weight: 1
  },
  standard: {
    color: '#fff',
    fillColor: '#002db4',
    fillOpacity: 0.7,
    opacity: 0.6,
    weight: 1
  },
  click: {
    color: '#fff',
    fillColor: '#002db4',
    fillOpacity: 0.4,
    opacity: 0.8,
    weight: 4
  }
}

function onMapClick(e) {
  const bounds = L.latLngBounds(
    e.target._bounds._southWest,
    e.target._bounds._northEast
  )
  map.fitBounds(bounds, { padding: [200, 200] })

  const dataArray = []
  const infoArray = []
  const unitArray = []

  /*
    infoArray.push('Waldfläche')
    infoArray.push('Landwirtschaftsfläche')
    infoArray.push('Verkehrsfläche')
    infoArray.push('Siedlungs- und Verkehrsfläche¹')
    infoArray.push('Siedlungs- und Verkehrsfläche¹')

    dataArray.push(e.target.feature.properties.a)
    dataArray.push(e.target.feature.properties.b)
    dataArray.push(e.target.feature.properties.c)
    dataArray.push(e.target.feature.properties.d)
    dataArray.push(e.target.feature.properties.e)

    unitArray.push('%')
    unitArray.push('%')
    unitArray.push('%')
    unitArray.push('%')
    unitArray.push('m²/Kopf')
    */

  let district = e.target.feature.properties.AREA_NAME

  if (district.split(' ').length > 0) {
    district = district.slice(3)
  }

  const h2 = document.createElement('h2')
  h2.innerHTML = district
  h2.classList.add('text-2xl')
  h2.classList.add('font-bold')
  h2.classList.add('px-3')
  h2.classList.add('py-2')

  const list = document.createElement('ul')

  const small = document.createElement('small')
  small.classList.add('p-3')
  small.innerHTML = 'Die Daten werden kurzfristig nachgereicht'
  small.classList.add('inline-block')

  list.classList.add('p-3')

  /*
    for (let i = 0; i < dataArray.length; i++) {
        const item = document.createElement('li')
        const entry = `<p>${infoArray[i]}</p><strong>${dataArray[i]} ${unitArray[i]}</strong>`

        item.classList.add('mb-2')
        item.innerHTML = entry
        list.appendChild(item)
    }
    */

  const details = document.getElementById('details')
  details.innerHTML = ''
  details.appendChild(h2)
  // details.appendChild(list)
  details.appendChild(small)
  details.classList.add('mb-4')

  e.preventDefault
}

function onEachFeature(feature, layer) {
  let label = feature.properties.AREA_NAME

  if (label.split(' ').length > 0) {
    label = label.slice(3)
  }

  layer.on('click', function (e) {
    e.target.setStyle(layerStyle.click)

    const layer = e.target

    if (
      prevLayerClicked !== null &&
      prevLayerClicked._leaflet_id != layer._leaflet_id
    ) {
      prevLayerClicked.setStyle(layerStyle.transparent)
    }

    prevLayerClicked = layer

    // set choosen district in queryform
    const district = document.querySelector('#district')

    if (district) {
      district.value = feature.properties.AREA_ID.slice(-1)
    }

    onMapClick(e)
  })

  layer
    .bindTooltip(label, {
      permanent: false,
      direction: 'top'
    })
    .openTooltip()
}

function addDataBezirke(data) {
  const layer = L.geoJson(data, {
    style: layerStyle.bezirke
  }).addTo(map)

  layer.bringToBack()
}

function addData(data) {
  L.geoJson(data, {
    style: layerStyle.standard
  }).addTo(map)

  const layer = L.geoJson(data, {
    style: layerStyle.transparent,
    onEachFeature: onEachFeature
  }).addTo(map)

  map.fitBounds(layer.getBounds(), { padding: [0, 0, 0, 0] })
}

const queryform = document.querySelector('#form')

if (queryform.length) {
  queryform.addEventListener('submit', (e) => {
    e.preventDefault()

    let data = new FormData(queryform)
    let year = data.getAll('year')

    data.delete('year')
    data.append('year', year)

    if (!data.get('singledistrict')) {
      data.delete('district')
    }

    const url = new URL(queryform.action, window.location.href)

    const params = new URLSearchParams(url)

    url.search = new URLSearchParams(data).toString()
    console.log(url)

    const output = document.getElementById('output')
    output.textContent = ''
  })
}
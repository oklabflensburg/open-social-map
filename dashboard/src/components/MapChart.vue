<template>
  <div>
    <Choropleth v-if="chartReady" :data="chartData" :options="chartOptions" />
  </div>
</template>

<script>
import { createTypedChart } from 'vue-chartjs'
import { Chart, Title, Legend, Tooltip, CategoryScale } from 'chart.js'
import { ChoroplethController, GeoFeature, ColorScale, ProjectionScale, topojson } from 'chartjs-chart-geo'

Chart.register(
  ChoroplethController,
  GeoFeature,
  ColorScale,
  CategoryScale,
  ProjectionScale,
  Tooltip,
  Title,
  Legend)

const Choropleth = createTypedChart("choropleth", "choropleth")


export default {
  name: 'MapChart',
  components: {
    Choropleth 
  },
  data() {
    return {
      chartReady: false,
      chartData: null,
      chartOptions: {
        showOutline: true,
        showGraticule: false,
        responsive: true,
        maintainAspectRatio: true,
        scales: {
          xy: {
            projection: 'mercator'
          }
        }
      }
    }
  },
  async created() {
    // const url = '/districts.json'
    const url = 'https://unpkg.com/world-atlas@2.0.2/countries-110m.json'

    await fetch(url)
      .then((response) => response.json())
      .then((value) => {
        const data = topojson.feature(value, value.objects.countries).features
        console.log(data)

        const dataObject = {
          labels: data.map((d) => d.properties.name),
          datasets: [{
            outline: data,
            label: 'Districts',
            data: data.map((d) => ({
              feature: d,
              value: Math.random() * 10
            }))
            // backgroundColor: ["#94BA62", "#59A22F", "#1A830C"]
          }]
        }

        console.log(dataObject)
        this.chartData = dataObject
        this.chartReady = true
      })
  }
}
</script>

// fetch('http://localhost:8000/sozialatlas/v1/district/details', {
fetch('https://api.oklabflensburg.de/sozialatlas/v1/district/details', {
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

let data = null
let districtId = 0
const defaultColor = '#a3cef9'
const highlightColor = '#0d7af3'
const selectElement = document.getElementById('districtSelect')

function formatNumberWithDot(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.')
}

function addData(response) {
  data = response
  drawDetailsData(response)
}

function drawDetailsData(response) {
  console.log(response)
  const defaultBackgroundColorArray = Array.from(
    { length: response.length },
    (_, i) => defaultColor
  )
  const districtNames = response.map((item) => item.district_name)
  const districts = response.map((item) => ({
    district_id: item.district_id,
    district_name: item.district_name
  }))

  districts.forEach((district) => {
    const optionElement = document.createElement('option')
    optionElement.value = district.district_id
    optionElement.textContent = district.district_name
    selectElement.appendChild(optionElement)
  })

  const districtName = document.getElementById('districtName')
  districtName.innerText = response[districtId].district_name

  const residentsId = document.getElementById('residents')
  residentsId.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].residents
  )

  const ageToUnder18Id = document.getElementById('ageToUnder18')
  ageToUnder18Id.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_to_under_18
  )

  const age18ToUnder30Id = document.getElementById('age18ToUnder30')
  age18ToUnder30Id.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_18_to_under_30
  )

  const age30ToUnder45Id = document.getElementById('age30ToUnder45')
  age30ToUnder45Id.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_30_to_under_45
  )

  const age45ToUnder65Id = document.getElementById('age45ToUnder65')
  age45ToUnder65Id.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_45_to_under_65
  )

  const age65ToUnder80Id = document.getElementById('age65ToUnder80')
  age65ToUnder80Id.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_65_to_under_80
  )

  const age80AndAboveId = document.getElementById('age80AndAbove')
  age80AndAboveId.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_80_and_above
  )

  const age0ToUnder7Id = document.getElementById('age0ToUnder7')
  age0ToUnder7Id.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_0_to_under_7
  )

  const age60AndAboveId = document.getElementById('age60AndAbove')
  age60AndAboveId.innerText = formatNumberWithDot(
    response[districtId].district_detail['2021'].age_groups.age_60_and_above
  )

  const residentsData = {
    labels: districtNames,
    datasets: [
      {
        data: response.map((item) => item.district_detail['2021'].residents),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  residentsData.datasets[0].backgroundColor[districtId] = highlightColor

  const birthsData = {
    labels: districtNames,
    datasets: [
      {
        data: response.map((item) => item.district_detail['2021'].births),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const ageRatioData = {
    labels: districtNames,
    datasets: [
      {
        data: response.map((item) => item.district_detail['2021'].age_ratio),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age18ToUnder30Data = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_18_to_under_30
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age30ToUnder45Data = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_30_to_under_45
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age45ToUnder65Data = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_45_to_under_65
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age65ToUnder80Data = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_65_to_under_80
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age0ToUnder7Data = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_0_to_under_7
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age60AndAboveData = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_60_and_above
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age80AndAboveData = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_80_and_above
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const ageToUnder18Data = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_to_under_18
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age18ToUnder65Data = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_18_to_under_65
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const age65AndAboveData = {
    labels: districtNames,
    datasets: [
      {
        data: response.map(
          (item) => item.district_detail['2021'].age_groups.age_65_and_above
        ),
        backgroundColor: defaultBackgroundColorArray,
        borderWidth: 0
      }
    ]
  }

  const options = {
    plugins: {
      title: {
        display: false
      },
      legend: {
        display: false
      }
    },
    scales: {
      x: {
        display: false
      },
      y: {
        display: false
      }
    }
  }

  const residentsChartStatus = Chart.getChart('residentsChart')

  if (residentsChartStatus != undefined) {
    residentsChartStatus.destroy()
  }

  const residentsCtx = document
    .getElementById('residentsChart')
    .getContext('2d')

  new Chart(residentsCtx, {
    type: 'bar',
    data: residentsData,
    options: options
  })

  const birthsChartStatus = Chart.getChart('birthsChart')

  if (birthsChartStatus != undefined) {
    birthsChartStatus.destroy()
  }

  const birthsCtx = document.getElementById('birthsChart').getContext('2d')

  new Chart(birthsCtx, {
    type: 'bar',
    data: birthsData,
    options: options
  })

  const ageRatioChartStatus = Chart.getChart('ageRatioChart')

  if (ageRatioChartStatus != undefined) {
    ageRatioChartStatus.destroy()
  }

  const ageRatioCtx = document.getElementById('ageRatioChart').getContext('2d')

  new Chart(ageRatioCtx, {
    type: 'bar',
    data: ageRatioData,
    options: options
  })

  const age18ToUnder30ChartStatus = Chart.getChart('age18ToUnder30Chart')

  if (age18ToUnder30ChartStatus != undefined) {
    age18ToUnder30ChartStatus.destroy()
  }

  const age18ToUnder30Ctx = document
    .getElementById('age18ToUnder30Chart')
    .getContext('2d')

  new Chart(age18ToUnder30Ctx, {
    type: 'bar',
    data: age18ToUnder30Data,
    options: options
  })

  const age30ToUnder45ChartStatus = Chart.getChart('age30ToUnder45Chart')

  if (age30ToUnder45ChartStatus != undefined) {
    age30ToUnder45ChartStatus.destroy()
  }

  const age30ToUnder45Ctx = document
    .getElementById('age30ToUnder45Chart')
    .getContext('2d')

  new Chart(age30ToUnder45Ctx, {
    type: 'bar',
    data: age30ToUnder45Data,
    options: options
  })

  const age45ToUnder65ChartStatus = Chart.getChart('age45ToUnder65Chart')

  if (age45ToUnder65ChartStatus != undefined) {
    age45ToUnder65ChartStatus.destroy()
  }

  const age45ToUnder65Ctx = document
    .getElementById('age45ToUnder65Chart')
    .getContext('2d')

  new Chart(age45ToUnder65Ctx, {
    type: 'bar',
    data: age45ToUnder65Data,
    options: options
  })

  const age65ToUnder80ChartStatus = Chart.getChart('age65ToUnder80Chart')

  if (age65ToUnder80ChartStatus != undefined) {
    age65ToUnder80ChartStatus.destroy()
  }

  const age65ToUnder80Ctx = document
    .getElementById('age65ToUnder80Chart')
    .getContext('2d')

  new Chart(age65ToUnder80Ctx, {
    type: 'bar',
    data: age65ToUnder80Data,
    options: options
  })

  const age0ToUnder7ChartStatus = Chart.getChart('age0ToUnder7Chart')

  if (age0ToUnder7ChartStatus != undefined) {
    age0ToUnder7ChartStatus.destroy()
  }

  const age0ToUnder7Ctx = document
    .getElementById('age0ToUnder7Chart')
    .getContext('2d')

  new Chart(age0ToUnder7Ctx, {
    type: 'bar',
    data: age0ToUnder7Data,
    options: options
  })

  const age60AndAboveChartStatus = Chart.getChart('age60AndAboveChart')

  if (age60AndAboveChartStatus != undefined) {
    age60AndAboveChartStatus.destroy()
  }

  const age60AndAboveCtx = document
    .getElementById('age60AndAboveChart')
    .getContext('2d')

  new Chart(age60AndAboveCtx, {
    type: 'bar',
    data: age60AndAboveData,
    options: options
  })

  const age80AndAboveChartStatus = Chart.getChart('age80AndAboveChart')

  if (age80AndAboveChartStatus != undefined) {
    age80AndAboveChartStatus.destroy()
  }

  const age80AndAboveCtx = document
    .getElementById('age80AndAboveChart')
    .getContext('2d')

  new Chart(age80AndAboveCtx, {
    type: 'bar',
    data: age80AndAboveData,
    options: options
  })

  const ageToUnder18ChartStatus = Chart.getChart('ageToUnder18Chart')

  if (ageToUnder18ChartStatus != undefined) {
    ageToUnder18ChartStatus.destroy()
  }

  const ageToUnder18Ctx = document
    .getElementById('ageToUnder18Chart')
    .getContext('2d')

  new Chart(ageToUnder18Ctx, {
    type: 'bar',
    data: ageToUnder18Data,
    options: options
  })

  const age18ToUnder65ChartStatus = Chart.getChart('age18ToUnder65Chart')

  if (age18ToUnder65ChartStatus != undefined) {
    age18ToUnder65ChartStatus.destroy()
  }

  const age18ToUnder65Ctx = document
    .getElementById('age18ToUnder65Chart')
    .getContext('2d')

  new Chart(age18ToUnder65Ctx, {
    type: 'bar',
    data: age18ToUnder65Data,
    options: options
  })

  const age65AndAboveChartStatus = Chart.getChart('age65AndAboveChart')

  if (age65AndAboveChartStatus != undefined) {
    age65AndAboveChartStatus.destroy()
  }

  const age65AndAboveCtx = document
    .getElementById('age65AndAboveChart')
    .getContext('2d')

  new Chart(age65AndAboveCtx, {
    type: 'bar',
    data: age65AndAboveData,
    options: options
  })
}

selectElement.addEventListener('change', function () {
  const selectedOption = selectElement.value
  selectElement.textContent = selectedOption
  districtId = selectedOption - 1
  drawDetailsData(data)
})
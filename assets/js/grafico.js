$(function () {
    var optionsBar = {
        legend: {
            display: false
        },
        responsive: true,
        title: {
            display: true,
            text: "SETOR 1",
            fontSize: 40,
        },
        indexAxis: 'y',
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    };
    var optionsBar2 = {
        legend: {
            display: false
        },
        responsive: true,
        title: {
            display: true,
            text: "SETOR 2",
            fontSize: 40,

        },
        indexAxis: 'y',
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    };
    var optionsBar3 = {
        legend: {
            display: false
        },
        responsive: true,
        title: {
            display: true,
            text: "SETOR 3",
            fontSize: 40,

        },
        indexAxis: 'y',
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    };
    var optionsBar4 = {
        legend: {
            display: false
        },
        responsive: true,
        title: {
            display: true,
            text: "SETOR 4",
            fontSize: 40,




        },
        indexAxis: 'y',
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    };
    var dataBar = {
        labels: [<?php echo $valores ?>],
        datasets: [{
            axis: 'y',
            data: [<?php echo $datas ?>],
            backgroundColor: [
                'rgba(255, 99, 132, 0.6)',
                'rgba(54, 162, 235, 0.6)',
                'rgba(255, 206, 86, 0.6)',
                'rgba(75, 192, 192, 0.6)',
                'rgba(153, 102, 255, 0.6)',
                'rgba(255, 159, 64, 0.6)',
                'rgba(115, 199, 80, 0.6)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(115, 199, 80, 1)'
            ],
            borderWidth: 4
        },

        ]
    };
    var dataBar2 = {
        labels: [<?php echo $valores2 ?>],
        datasets: [{
            axis: 'y',
            data: [<?php echo $datas2 ?>],
            backgroundColor: [
                'rgba(255, 99, 132, 0.6)',
                'rgba(54, 162, 235, 0.6)',
                'rgba(255, 206, 86, 0.6)',
                'rgba(75, 192, 192, 0.6)',
                'rgba(153, 102, 255, 0.6)',
                'rgba(255, 159, 64, 0.6)',
                'rgba(115, 199, 80, 0.6)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(115, 199, 80, 1)'
            ],
            borderWidth: 4
        },

        ]
    };
    var dataBar3 = {
        labels: [<?php echo $valores3 ?>],
        datasets: [{
            axis: 'y',
            data: [<?php echo $datas3 ?>],
            backgroundColor: [
                'rgba(255, 99, 132, 0.6)',
                'rgba(54, 162, 235, 0.6)',
                'rgba(255, 206, 86, 0.6)',
                'rgba(75, 192, 192, 0.6)',
                'rgba(153, 102, 255, 0.6)',
                'rgba(255, 159, 64, 0.6)',
                'rgba(115, 199, 80, 0.6)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(115, 199, 80, 1)'
            ],
            borderWidth: 4
        },

        ]
    };
    var dataBar4 = {
        labels: [<?php echo $valores4 ?>],
        datasets: [{
            axis: 'y',
            data: [<?php echo $datas4 ?>],
            backgroundColor: [
                'rgba(255, 99, 132, 0.6)',
                'rgba(54, 162, 235, 0.6)',
                'rgba(255, 206, 86, 0.6)',
                'rgba(75, 192, 192, 0.6)',
                'rgba(153, 102, 255, 0.6)',
                'rgba(255, 159, 64, 0.6)',
                'rgba(115, 199, 80, 0.6)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(115, 199, 80, 1)'
            ],
            borderWidth: 4
        },

        ]
    };



    function gerarGraficos() {
        var ctx = document.getElementById("chart-one").getContext("2d");
        var BarChart2 = new Chart(ctx, {
            type: 'horizontalBar',
            data: dataBar,
            options: optionsBar
        });

        var ctx2 = document.getElementById("chart-two").getContext("2d");
        var LineChart = new Chart(ctx2, {
            type: 'horizontalBar',
            data: dataBar2,
            options: optionsBar2
        });

        var ctx3 = document.getElementById("chart-three").getContext("2d");
        var LineChart2 = new Chart(ctx3, {
            type: 'horizontalBar',
            data: dataBar3,
            options: optionsBar3
        });
        var ctx4 = document.getElementById("chart-four").getContext("2d");
        var LineChart2 = new Chart(ctx4, {
            type: 'horizontalBar',
            data: dataBar4,
            options: optionsBar4
        });
    }

    gerarGraficos();
})
<?php


include '../conexao/conexao.php';
$sql = "SELECT count(tb_search.bairro) AS quantidade, tb_search.pesquisageral FROM tb_search, setor WHERE tb_search.bairro = setor.bairro AND setor.setor = '1' GROUP BY tb_search.cidade, tb_search.pesquisageral, setor.setor, SETOR.SETOR ORDER BY tb_search.BAIRRO";
$sql2 = "SELECT count(tb_search.bairro) AS quantidade, tb_search.pesquisageral FROM tb_search, setor WHERE tb_search.bairro = setor.bairro AND setor.setor = '2' GROUP BY tb_search.cidade, tb_search.pesquisageral, setor.setor, SETOR.SETOR ORDER BY tb_search.BAIRRO";
$sql3 = "SELECT count(tb_search.bairro) AS quantidade, tb_search.pesquisageral FROM tb_search, setor WHERE tb_search.bairro = setor.bairro AND setor.setor = '3' GROUP BY tb_search.cidade, tb_search.pesquisageral, setor.setor, SETOR.SETOR ORDER BY tb_search.BAIRRO";
$sql4 = "SELECT count(tb_search.bairro) AS quantidade, tb_search.pesquisageral FROM tb_search, setor WHERE tb_search.bairro = setor.bairro AND setor.setor = '4' GROUP BY tb_search.cidade, tb_search.pesquisageral, setor.setor, SETOR.SETOR ORDER BY tb_search.BAIRRO";

$buscar = mysqli_query($conexao, $sql);
$buscar2 = mysqli_query($conexao, $sql2);
$buscar3 = mysqli_query($conexao, $sql3);
$buscar4 = mysqli_query($conexao, $sql4);

#chart.js - Preparando valores#

$datas = '';
$valores = '';
$datas2 = '';
$valores2 = '';
$datas3 = '';
$valores3 = '';
$datas4 = '';
$valores4 = '';



while ($dados = mysqli_fetch_array($buscar)) {

	$datas = $datas . '"' . $dados['quantidade'] . '",';
	$valores = $valores . '"' . $dados['pesquisageral'] . '",';
	$datas = trim($datas); #tira os espaços da variável
	$valores = trim($valores);
}
while ($dados2 = mysqli_fetch_array($buscar2)) {

	$datas2 = $datas2 . '"' . $dados2['quantidade'] . '",';
	$valores2 = $valores2 . '"' . $dados2['pesquisageral'] . '",';
	$datas2 = trim($datas2); #tira os espaços da variável
	$valores2 = trim($valores2);
}
while ($dados3 = mysqli_fetch_array($buscar3)) {

	$datas3 = $datas3 . '"' . $dados3['quantidade'] . '",';
	$valores3 = $valores3 . '"' . $dados3['pesquisageral'] . '",';
	$datas3 = trim($datas3); #tira os espaços da variável
	$valores3 = trim($valores3);
}
while ($dados4 = mysqli_fetch_array($buscar4)) {

	$datas4 = $datas4 . '"' . $dados4['quantidade'] . '",';
	$valores4 = $valores4 . '"' . $dados4['pesquisageral'] . '",';
	$datas4 = trim($datas4); #tira os espaços da variável
	$valores4 = trim($valores4);
}

include 'inc/menu.php'
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>

<body>
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-6 mb-5 mb-xl-0">
                <div class="card shadow">
                    <div class="card-header bg-transparent">
                        <div class="row align-items-center">
                            <div class="col">
                                <h6 class="text-uppercase text-muted ls-1 mb-1">Grafico</h6>
                                <h2 class="mb-0">Setor 1</h2>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Chart -->
                        <div class="chart">
                            <!-- Chart wrapper -->
                            <canvas id="chart-one" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="card shadow">
                    <div class="card-header bg-transparent">
                        <div class="row align-items-center">
                            <div class="col">
                                <h6 class="text-uppercase text-muted ls-1 mb-1">Grafico</h6>
                                <h2 class="mb-0">Setor 2</h2>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Chart -->
                        <div class="chart">
                            <canvas id="chart-two" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-6 mb-5 mb-xl-0">
                <div class="card shadow">
                    <div class="card-header bg-transparent">
                        <div class="row align-items-center">
                            <div class="col">
                                <h6 class="text-uppercase text-muted ls-1 mb-1">Grafico</h6>
                                <h2 class="mb-0">Setor 3</h2>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Chart -->
                        <div class="chart">
                            <!-- Chart wrapper -->
                            <canvas id="chart-three" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="card shadow">
                    <div class="card-header bg-transparent">
                        <div class="row align-items-center">
                            <div class="col">
                                <h6 class="text-uppercase text-muted ls-1 mb-1">Grafico</h6>
                                <h2 class="mb-0">Setor 4</h2>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Chart -->
                        <div class="chart">
                            <canvas id="chart-four" class="chart-canvas"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
<?php
include 'inc/footer.php'
?>
<script>
    
$(function () {
    var optionsBar = {
        legend: {
            display: false
        },
        responsive: true,
       
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


</script>
</html>
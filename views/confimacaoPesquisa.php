<?php
include 'inc/menu.php';
    $cep =$_GET['cep'];
    $cidade = $_GET ['cidade'];
    $uf =$_GET['uf'];
    $bairro = $_GET ['bairro'];
    $sexo =$_GET['sexo'];
    $faixaEtaria = $_GET ['faixaEtaria'];
    $pesquisageral =$_GET['pesquisaGeral'];
    

?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Inicial</title>
</head>

<body>
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col">
                <div class="card shadow">
                    <div class="card-header border-1">
                        <h3 class="mb-0">Pesquisa Sobre a Cidade</h3>
                    </div>
                    <?php
                    include '../conexao/conexao.php';
                    $sql = "INSERT INTO tb_search (cidade, cep, uf, bairro, sexo, faixa_etaria, pesquisageral) VALUES ('$cidade', '$cep', '$uf', '$bairro', '$sexo', '$faixaEtaria', '$pesquisageral')";
                    $inserir = mysqli_query($conexao,$sql);
                    
                    if($sql){?>
                    <center>
                        <div class="container" style="margin-top:10px">
                            <div id='aprovado' style="width: 200px; height: 200px;"></div>
                            <h4>Pesquisa Enviada</h4>
                            <a href="./dashboard.php" role="button" class="btn btn-primary">Dashboard</a>
                    </center>
                    <?php } else {?>
                        <center>
                        <div class="container" style="margin-top:10px">
                            <div id='erro' style="width: 200px; height: 200px;"></div>
                            <h4>Pesquisa Não Enviada</h4>
                    </center>
                        <?php

                    }?>
                </div>
            </div>
        </div>
    </div>
</body>
<?php
include 'inc/footer.php'
?>
<script src="../assets/animacoes/animacoes/bodymovin.js"></script>

<script type="text/javascript">
    var svgContainer = document.getElementById('erro');
    var animItem = bodymovin.loadAnimation({
        wrapper: svgContainer,
        animType: 'svg',
        loop: true,
        autoplay: true,

        path: '../assets/animacoes/animacoes/error.json'
    });
</script>


<script type="text/javascript">
    var svgContainer = document.getElementById('aprovado');
    var animItem = bodymovin.loadAnimation({
        wrapper: svgContainer,
        animType: 'svg',
        loop: true,
        autoplay: true,

        path: '../assets/animacoes/animacoes/aprovado.json'
    });
</script>

</script>

</html>
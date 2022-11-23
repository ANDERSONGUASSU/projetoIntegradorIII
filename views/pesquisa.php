<?php
include 'inc/menu.php'
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesquisa</title>
</head>

<body>
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col">
                <div class="card shadow">
                    <div class="card-header border-1">
                        <h3 class="mb-2">Pesquisa Sobre a Cidade</h3>
                    </div>
                    <form action="./confimacaoPesquisa.php" method="get">

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="cep" class="form-control-label">CEP</label>
                                <input class="form-control form-control-alternative" placeholder="99999-999" type="tel" id="cep" name="cep" value="" autofocus required >

                                <label for="cidade" class="form-control-label">Cidade</label>
                                <input class="form-control form-control-alternative text-uppercase" placeholder="Informe a Cidade" type="text" id="cidade" name="cidade" value="" >

                                <label for="bairro" class="form-control-label">Bairro</label>
                                <input class="form-control form-control-alternative text-uppercase" placeholder="Informe o bairro" type="text" id="bairro" name="bairro" value="">

                                <label for="#cep" class="form-control-label">UF</label>
                                <input class="form-control form-control-alternative text-uppercase" placeholder="Informe a UF" type="text" id="uf" name="uf" value="">
                            </div>
                        </div>
                        <div class="card-header border-0">
                            <h3 class="mb-2">Informe seu sexo:</h3>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="masculino" name="sexo" value="M" class="custom-control-input">
                            <label class="custom-control-label" for="masculino">Masculino</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="feminino" name="sexo" value="F" class="custom-control-input">
                            <label class="custom-control-label" for="feminino">Feminino</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" id="prefiro_nao_dizer" name="sexo" value="N" class="custom-control-input">
                            <label class="custom-control-label" for="prefiro_nao_dizer">Prefiro não dizer</label>
                        </div>

                        <div class="card-header border-0">
                            <h3 class="mb-2">Informe sua faixa etária:</h3>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id=">60" name="faixaEtaria" class="custom-control-input" value="Acima de 60 anos">
                            <label class="custom-control-label" for=">60">Acima de 60 anos</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id=">30" name="faixaEtaria" class="custom-control-input" value="De 30 a 59 anos">
                            <label class="custom-control-label" for=">30">De 30 a 59 anos</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id=">19" name="faixaEtaria" class="custom-control-input" value="De 19 a 29 anos">
                            <label class="custom-control-label" for=">19">De 19 a 29 anos</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="<18" name="faixaEtaria" class="custom-control-input" value="Até 18 anos">
                            <label class="custom-control-label" for="<18">Até 18 anos</label>
                        </div>
                        <div class="card-header border-0">
                            <h3 class="mb-2">Qual item das opções precisa de mais atenção no seu bairro?</h3>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="coleta_de_lixo" name="pesquisaGeral" value="COLETA DE LIXO" class="custom-control-input">
                            <label class="custom-control-label" for="coleta_de_lixo">Coleta de Lixo</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="limpeza_de_terrenos" name="pesquisaGeral" value="LIMPEZA DE TERRENOS" class="custom-control-input">
                            <label class="custom-control-label" for="limpeza_de_terrenos">Limpeza de Terrenos</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="limpeza_da_via_pública" name="pesquisaGeral" value="LIMPEZA DA VIA PÚBLICA" class="custom-control-input">
                            <label class="custom-control-label" for="limpeza_da_via_pública">Limpeza da Via Pública</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="guarda_municipal" name="pesquisaGeral" value="GUARDA MUNICIPAL" class="custom-control-input">
                            <label class="custom-control-label" for="guarda_municipal">Guarda Municipal</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="abastecimento_de_agua" name="pesquisaGeral" value="ABASTECIMENTO DE ÁGUA" class="custom-control-input">
                            <label class="custom-control-label" for="abastecimento_de_agua">Abastecimento de Água</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="imuminacao_publica" name="pesquisaGeral" value="ILUMINAÇÃO PÚBLICA" class="custom-control-input">
                            <label class="custom-control-label" for="imuminacao_publica">Iluminação Pública</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="areas_de_lazer" name="pesquisaGeral" value="ÁREAS DE LAZER" class="custom-control-input">
                            <label class="custom-control-label" for="areas_de_lazer">Áreas de lazer</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="recapeamento_das_ruas" name="pesquisaGeral" value="RECAPEAMENTO ASFALTICO" class="custom-control-input">
                            <label class="custom-control-label" for="recapeamento_das_ruas">Recapemento Asfaltico</label>
                        </div>
                        
                        <div class="card-footer py-4">
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <input type="submit" class="btn btn-outline-primary" onclick="Enviar();" value="Enviar Pesquisa">
                            </div>
                        </div>
                        
                    </form>


                </div>
            </div>
        </div>
    </div>



</body>
<?php
include 'inc/footer.php'
?>


</html>
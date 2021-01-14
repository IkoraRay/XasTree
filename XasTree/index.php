<?php include('components/head.inc.php') ?>
        
        <?php include('components/navbar.inc.php') ?>
  
<header class="page-header gradient">
        <div class="container pt-3">
            <div class="row align-items-center justify-content-right ">
                <div class="col-md-9"><h2> Pesquise seus Investimentos</h2>
                    <!-- Definição de form para alteração de URL -->
                    <form type = "GET" action = "index.php">  
                      <fieldset>
                        <div class="form-group row ">
                          <label for="inputID" class="col-sm-0 col-form-label">Seu ID:

                          </label>
                          <div class="col-sm-5">
                            <!-- Entrada do ID com número inteiro-->
                            <input type="number" name= "ID" class="form-control" id="ID" placeholder="ID"> 
                          </div>
                          <!-- Botão de submissão-->
                          <input class="btn btn-primary" type="submit" value="Consultar"> 
                          
                        </div>
                      </fieldset>
                    </form>      
              </div>
                
                
            </div>
        </div>
        
</header>
<!-- Conexão com o banco de dados e retorno das informações -->
<?php     
            include "banco.php";
            if (isset($_GET['ID'])){
                $investimentos = busca_invest($conexao,$_GET['ID'] );
                $info = busca_info($conexao, $_GET['ID']);
            }?>
            
<div class="jumbotron">
  <!-- Mensagem de Boas Vindas ao cliente com seus nome completo e email -->
  <h1 class="display-4">Olá <?php echo $info['fname'] . " " . $info['lname'] . ","?> </h1>
  <p class="lead justify-content-right"><?php echo $info['email']?></p>
  <p class="lead">Estes são os seus investimentos atuais:</p>
  <hr class="my-4">
  <!-- Lista com todos os investimentos retornados do banco de dados -->
  <ul class="container-fluid list-group">
              
              <?php foreach ($investimentos as $invest) : ?>
                <tr>
                  <li class="list-group-item list-group-item-success "><?php echo $invest['prodname']; ?></li>
                    
                </tr>
              <?php endforeach; ?>
              
              
  </ul>
</div>


<?php include('components/footer.inc.php') ?>
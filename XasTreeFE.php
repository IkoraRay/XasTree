<html>
    <head>
        <title> XasTree</title>
    </head>
    <body>
        <h1>Consulta de Investimento</h1>
        <form>
            <fieldset>
                <legend>Nova Consulta</legend>
                <label>
                    ID:
                    <input type = "integer" name = "ID" />
                </label>
                <input type = "submit" value = "Pesquisar"/>
            </fieldset>
        </form>
        <?php
            include "banco.php";
            if (isset($_GET['ID'])){
                $investimentos = busca_invest($conexao,$_GET['ID'] );
            }?> 
               <?php foreach ($investimentos as $invest) : ?>
                <tr>
                    <td> <?php echo $invest['idprod']; ?></td>
                    <td> <?php echo $invest['prodname']; ?></td>
                </tr>
                <?php endforeach; ?>
            
            
    </body>
</html>
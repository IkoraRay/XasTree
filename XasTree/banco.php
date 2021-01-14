<?php

$bdserver = '127.0.0.1';
$bduser = 'sysclient';
$bdpassword = 'senha';
$bdbank = 'xastree';

$conexao = mysqli_connect($bdserver, $bduser, $bdpassword, $bdbank);

if (!$conexao){
    echo "Erro de Conexão.";
    die();
}

function busca_invest($conexao , $ID){
    $search = "SELECT * FROM prod p, invest i, func f WHERE p.idprod = i.prod_id AND i.func_id = f.id AND f.id = $ID" ;
    $result = mysqli_query($conexao, $search);

    $invests = array();

    while ($invest = mysqli_fetch_assoc($result)){
        $invests[] = $invest;
    }


    return $invests;
}

function busca_info($conexao , $ID){
    $search = "SELECT fname, lname, email FROM func WHERE func.id = $ID";
    $result = mysqli_query($conexao, $search);

    $info = mysqli_fetch_assoc($result);

    return $info;
}
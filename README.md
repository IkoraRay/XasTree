# XasTree
Projeto realizado para processo seletivo.

Programas utilizados para desenvolvimento e execução:
  XAMPP : 
- Para instalação: Seguir os passos em https://www.apachefriends.org/pt_br/download.html
   Apache
- Presente no XAMPP
   MySQL
- Presente no XAMPP
Biblioteca utilizada:
  Bootstrap v5.0
- Para instalação: Realizar download em https://getbootstrap.com/docs/5.0/getting-started/download/ 

        *Biblioteca já presente nos arquivos deste repositório.
        
 Execução do Programa:
 
 Passo 1: Com o XAMPP instalado, inicie o módulo Apache e MySQL.
 
 Passo 2: Descomprima a pasta XasTree e a coloque na pasta htdocs(pasta do XAMP).
 
 Passo 3: Acesse localhost/phpmyadmin.net/ em seu navegador para acessar o MySQL e importe o arquivo xastree.sql para executar os comandos do banco de dados.
 
 Passo 4: Após executar o banco de dados, na aba privilégios crie um novo usuário com ID: sysclient e senha: senha .
 
          *Garanta todas as permissões ao usuário para que não haja problemas.
          
 Passo 5: Acesse localhost/.../XasTree/index.php para acessar o site e começar as consultas.
 
          *Estão cadastrados no banco apenas os ID 1 ao 6, qualquer número fora desse escopo retornará erros na página.

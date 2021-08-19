# Como estruturar meu projeto de análise de dados?

Uma forma simples de estruturar um projeto de análise de dados é usando um sistema de pastas
que separa códigos, dados, outputs e referências.

As pastas serão organizadas da seguinte forma:
* __codes__ conterá os scripts com códigos
* __data__ conterá os arquivos (.csv ou outra extensão) com os dados
* __outputs__ servirá com um container para os outputs da análise de dados (figuras e tabelas)
* __references__ poderá guardar as referências bibliográficas

__Os arquivos .keep são apenas um artificio usado para que o GitHub publique as pastas do projeto, uma vez que pastas vazias não podem ser publicadas no GitHub.__

__O arquivo .gitignore serve para explicitar quais arquivos e pastas você nao quer hospedar no GitHub__

# Criando uma estrutura de projeto de forma automática

O arquivo _criar.projeto.sh_ foi escrito em bash e serve para gerar de forma automática a estrutura de projeto
proposta acima. Este arquivo pode ser excutado em um terminal linux
ou MacOS (e também em Windows dentro do Git Bash).

Execute o programa da seguinte forma:
1. abra o seu terminal (ou Git Bash) na pasta contendo o arquivo _criar-projeto.sh_
2. execute o comando: ```./criar-projeto.sh nome-do-projeto```

```nome-do-projeto``` é o nome que você dará ao seu projeto (o qual não deve conter espaços).
caso o comando ```./criar-projeto.sh``` nao funcione, dê permissão para a execução do programa
usando os comandos: ```chmod +x criar-projeto.sh```, depois repita o passo 2 descrito acima.

__Lembre-se, você sempre poderá criar as pastas do seu projeto manualmente!__

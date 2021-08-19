# Como organizar os códigos do R?

Uma boa forma de organizar seus códigos do R é a partir de arquivos separados, modularizando o código.

Sugerimos usar 3 arquivos:
* _main_script.R_ conterá os códigos da análise de dados propriamente dita
* _my_packages.R_ conterá os códigos para instalar e carregar os pacotes do R
* _my_functions.R_ conterá os códigos de funções que você mesmo criou para a análise de dados

O arquivo _main_script.R_ será o arquivo principal para a nálise de dados no R. Esse script irá
chamar internamente os dois outros scripts (_my_packages.R_ e _my_functions.R_).

# LOAD PACKAGES AND FUNCTIONS -------------------

source("./codes/my_packages.R")
source("./codes/my_functions.R")

# LOAD DATASETS ---------------------------------

# substitua your-dataset.csv pelo nome do arquivo
# contendo os dados. Observe os parâmetros da função read.csv.
# digite ?read.csv no console do R para ler a documentação da função
my_data = read.csv("./data/your-dataset.csv", header = TRUE, sep = ",", dec = ".")

# DATA ANALYSIS --------------------------------

# código da sua análise de dados

# OUTPUTS --------------------------------------

# código para exportar gráficos e tabelas para
# a pasta ./outputs/  



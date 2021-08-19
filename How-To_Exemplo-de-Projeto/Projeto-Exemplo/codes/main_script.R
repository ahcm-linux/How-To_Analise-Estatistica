# LOAD PACKAGES ----------------------------

# carregar pacotes e funções externas
source("./codes/my_packages.R")
source("./codes/my_functions.R")

# LOAD DATA -------------------------------

# carregar conjunto de dados
my_data = read.csv("./data/iris.csv", header = TRUE, sep = ",", dec = ".")

# DATA ANLYSIS ----------------------------

# ver primeiras linhas do objeto iris
head(my_data)

# ver grafico de dispersão de Sepal.Length
# contra Sepal.Width, sem diferenciar espécies
plot(Sepal.Length ~ Sepal.Width, data = my_data)

# refazer o gráfico anterior, porém, usando
# o pacote ggplot2
plt_1 = ggplot(my_data, aes(y = Sepal.Width, x = Sepal.Length, color = Species)) +
	geom_point()

# calcular a trimédia de Tukey para Speal.Length e Sepal.Width,
# diferenciando espécies
tab_1 = my_data %>% group_by(Species) %>% summarise(across(starts_with("Sepal"), TukeyTriMean))

# OUTPUTS --------------------------------

# salvar resultados de tb_1 como um arquivo .csv na pasta outputs
write.csv(tab_1, file = "./outputs/tab_1-tukeytrimean.csv", quote = FALSE, row.names = FALSE)

# salvar gráfico plt_1 (gerado pelo ggplot2) em formato .jpg na pasta outputs
ggsave("./outputs/from-ggplot_scatterplot.jpg", plt_1)

# salvar gráfico de disperssão gerado pela função plot() da base do R
jpeg("./outputs/from-plot_scatterplot.jpg")
plot(Sepal.Length ~ Sepal.Width, data = iris)
dev.off()

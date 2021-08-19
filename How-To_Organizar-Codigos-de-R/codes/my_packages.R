suppressMessages({

  load_lib <- c(
    # INCLUA AQUI OS PACOTES, COM NOMES ENTRE ASPAS E SEPARADOS POR VÍRGULA (ex: "plyr", "gamlss")
  )

  install_lib <- load_lib[!(load_lib %in% installed.packages())] # check package
  if (length(install_lib)) for (i in install_lib) install.packages(i) # install

  cat("Loaded Packages:\n")
  print(sapply(load_lib, require, character = TRUE)) # load
  cat("\n\n")

})

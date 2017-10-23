setwd("~/Documentos/CADUNICO/ListasBSM/CSV/") # caminho par ao seu diretório
arquivos <- list.files(path = "~/Documentos/CADUNICO/ListasBSM/CSV/", pattern = "*.csv") # caminho para o diretório e extensao deles

bases <- lapply(arquivos, function(x){
  b <- read.csv(x, header = TRUE, sep = ",")
})
library(dplyr)
merge <- bind_rows (bases)

write.csv(merge, file = "mergeBSM.csv")
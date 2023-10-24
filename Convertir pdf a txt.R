library(pdftools)
getwd()
setwd("C:/Users/ASUS/OneDrive/Documentos/Tesis/PDF")

pub <- list.files()

Conv_pdf_txt <- function(pdf){
  txt <- paste(pdf_text(pdf), collapse="\n")
  return(txt)
}

for (i in 1:length(pub)){

  años <- NULL
  setwd(paste0("C:/Users/ASUS/OneDrive/Documentos/Tesis/PDF/", pub[1]))
  años <- list.files()
  for (j in 1:length(años)) {
    
    files <- files_txt <- NULL
    setwd(paste0("C:/Users/ASUS/OneDrive/Documentos/Tesis/PDF/", pub[1],"/", años[j]))
    files <- list.files(pattern = "\\.pdf$")
    files_txt <- lapply(files, Conv_pdf_txt)
    for (k in 1:length(files_txt)) {
      writeLines(unlist(files_txt[k]), paste0(getwd(),"/",files[k],".txt"))
    }
  }
}



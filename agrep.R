

bersih_text_dasar = function(isi_text){
  isi_text = gsub("'","",isi_text)
  isi_text = gsub("[[:punct:]]"," ",isi_text)
  isi_text <- gsub("^[[:space:]]+", "", isi_text) # remove whitespace at beginning of documents
  isi_text <- gsub("[[:space:]]+$", "", isi_text) # remove whitespace at end of documents
  isi_text <- gsub("\\s+"," ",isi_text) 
  isi_text <- gsub("[[:digit:]]"," ",isi_text)
  isi_text <- tolower(isi_text) # force to lowercase
}

tes2 <- tokenizers::tokenize_ngrams(x = hasil,n = 1)
tes2 <- unlist(tes2)

getwords_agrep <- function(cari_kata,isi_pesan,value=T){
  result <- list()
  for(i in 1:length(cari_kata)){
    result[i] <- list(agrep(cari_kata[i],isi_pesan,value = value))
  }
  result
  for(i in 1:length(result)){
    for(j in length(unlist(result[[i]])))
      result[[i]] <- list(hasil=result[[i]],cari=rep(cari_kata[i],j))
  }
  hasil <- do.call(rbind.data.frame,result)
}

kelurahan <- as.character(unlist(cari$kelurahan))

hasil_akhir <- getwords_agrep(kelurahan,tes2)

hasil_akhir2 <- unique(hasil_akhir)



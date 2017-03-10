# getwords_agrep
Mencari kata-kata yang mirip

# Langkah 1
Cara Penggunaan :
function bersih_text_dasar

text <- as.charachter(data_anda)

text <- bersih_text_dasar(text)

# Langkah 2
## Melakukan tokenizer untuk memudahkan mencari kata-kata yang mirip

text_token <- tokenizers::tokenize_ngrams(x = text,n = 1)

text_token <- unlist(text_token)

# Langkah 3
Menggunakan function getwords_agrep

Cara penggunaan :

hasil <- getwords_agrep(cari_kata,text_token)

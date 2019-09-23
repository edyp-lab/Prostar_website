library(R.utils)

base <- readLines('skeleton.md')
if (file.exists('temp.md')){unlink('temp.md')}
dest <- file("temp.md", open = "w")


for (i in 1:length(base)){
  if (grepl('[[',base[i], fixed=TRUE)==TRUE){
    md_filename <- substring(base[i], 3, nchar(base[i])-2)
    print(md_filename)
    md <- readLines(md_filename)
    writeLines(md, dest)
  } else {
    writeLines(base[i], dest)
  }
}

close(dest)

rmarkdown::render("temp.md", output_file = "./docs/index.html", quiet = TRUE)
#unlink('temp.md')

### add the favicon necessary text in the header

html.tmp <- readLines("docs/index.html")
if (file.exists('temp.html')){unlink('temp.html')}
dest <- file("temp.html", open = "w")

for (i in 1:length(html.tmp)){
    writeLines(html.tmp[i], dest)
  if (html.tmp[i]== '<head>'){
    print(html.tmp[i])
    writeLines("<link rel=\"icon\" href=\"./favicon.ico\" sizes=\"32x32\">", dest)
  }
  
}

close(dest)
renameFile("temp.html", "./docs/index.html", overwrite=TRUE)

unlink('temp.html')
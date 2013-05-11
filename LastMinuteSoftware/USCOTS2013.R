# open an Rmd or other template in an editor from the fetchData() site
fetchRmd <- function(name) {
  fetchAddress="http://www.mosaic-web.org/go/datasets/"
  fullname = paste(fetchAddress,name,sep="")
  tmpName = tempfile(pattern="template",fileext=".Rmd")
  download.file(fullname,tmpName)
  file.edit(tmpName)
}
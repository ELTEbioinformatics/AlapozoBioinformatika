read.csv <- function(file, header=T, sep="", quote="",
                     comment.char="", ...){
  return(read.table(file=file, header=header, sep=sep, 
                    quote=quote, comment.char=comment.char, ...))
}

get.filename.with.path <- function(x, path, filename, num=""){
  full.path <- paste(path, filename, sep="/")
  with.extension <- paste(full.path, '.csv', sep=as.character(num))
  return(with.extension)
}
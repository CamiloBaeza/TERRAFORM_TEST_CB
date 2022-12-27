resource "aws_s3_object" "s3_object_procesados_SD" {
  for_each = fileset("./Studio-develop/","**")
  bucket = "tarrocaido"
  key = "Studio-develop/${each.value}"
  source = "./Studio-develop/${each.value}"
  etag = filemd5("./Studio-develop/${each.value}")
}

resource "aws_s3_object" "s3_object_procesados_SQ" {
  for_each = fileset("./Studio-qa/","**")
  bucket = "tarrocaido"
  key = "Studio-qa/${each.value}"
  source = "./Studio-qa/${each.value}"
  etag = filemd5("./Studio-qa/${each.value}")
}

resource "aws_s3_object" "s3_object_fodler1_fore" {
  for_each = fileset("./Folder1/","**")
  bucket = "tarrocaido"
  key = "Folder1/${each.value}"
  source = "./Folder1/${each.value}"
  etag = filemd5("./Folder1/${each.value}")
}

resource "aws_s3_object" "folder2"{
  bucket = "tarrocaido"
  key = "Folder2/"
  source = "/dev/null"
}

resource "aws_s3_object" "folder3"{
  bucket = "tarrocaido"
  key = "Folder3/"
  source = "/dev/null"
}
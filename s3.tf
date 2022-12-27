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

resource "aws_s3_object" "folder1"{
  bucket = "tarrocaido"
  key = "Folder1/"
  source = "./Folder1"
}

resource "aws_s3_object" "folder2"{
  bucket = "tarrocaido"
  key = "Folder2/"
  source = "/dev/null"
}

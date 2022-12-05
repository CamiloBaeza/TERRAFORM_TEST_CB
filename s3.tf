resource "aws_s3_object" "s3_object_procesados_SD" {
  for_each = fileset("./Studio-develop/","**")
  bucket = "tarrotomado"
  key = "Studio-develop/${each.value}"
  source = "./Studio-develop/${each.value}"
  etag = filemd5("./Studio-develop/${each.value}")
}

resource "aws_s3_object" "s3_object_procesados_SQ" {
  for_each = fileset("./Studio-qa/","**")
  bucket = "tarrotomado"
  key = "Studio-qa/${each.value}"
  source = "./Studio-qa/${each.value}"
  etag = filemd5("./Studio-qa/${each.value}")
}
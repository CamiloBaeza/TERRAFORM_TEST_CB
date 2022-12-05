resource "aws_s3_object" "s3_object_procesados" {
  for_each = fileset("./Studio-develop/","**")
  bucket = "tarrotomado"
  key = "${each.value}"
  source = "./Studio-develop/${each.value}"
  etag = filemd5("./Studio-develop/${each.value}")
}
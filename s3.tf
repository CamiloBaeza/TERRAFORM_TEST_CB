resource "aws_s3_object" "s3_object_procesados" {
  for_each = fileset("./","**")
  bucket = "tarrotomado"
  key = "./${each.value}"
  source = "./${each.value}"
  etag = filemd5("./${each.value}")
}
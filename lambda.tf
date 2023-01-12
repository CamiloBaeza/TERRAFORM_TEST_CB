data "archive_file" "zip_the_python_code_main_tarrocaido" {
  type        = "zip"
  source_dir  = "./code/lambda/"
  output_path = "./code/lambda/lambda_function.py.zip"
}

resource "aws_lambda_function" "lambdita" {
  filename         = "./code/lambda/lambda_function.py.zip"
  source_code_hash = data.archive_file.zip_the_python_code_main_tarrocaido.output_base64sha256
  function_name    = local.lambdanamefunc
  role             = "arn:aws:iam::042670738437:role/Rol-lambdatarrocaido"
  description      = "blbla"
  handler          = "main.handler"
  runtime          = "python3.8"
  timeout          = 900
  environment {
    variables = {
      BUCKET_TARRO = "tarrocaido2-85326974528sssd8"
    }
  }
}


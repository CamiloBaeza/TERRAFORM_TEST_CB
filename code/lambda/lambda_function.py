import json
import os
from botocore.exceptions import ClientError

MAX_DELETE_BATCH_SIZE = 100 
logger = logging.getLogger()
logger.setLevel(os.getenv("LOG_LEVEL", logging.INFO))

def lambda_handler(event, context):
    try:
        nombretarro = os.environ["BUCKET_TARRO"]
        return nombretarro
    except ClientError as error:
        logger.info("Unexpected error: %s" %error)
        return
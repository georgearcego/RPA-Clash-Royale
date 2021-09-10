from pathlib import Path
import os
import logging

# Configure Logging
LOG_LEVEL = "DEBUG"
FORMATTER_LOG = 'RPA-Logger %(asctime)s %(levelname)s %(name)s %(message)s'
FILENAME_LOG = './LogOperations.log'

HANDLER_LOG = logging.FileHandler(FILENAME_LOG, encoding="UTF-8")
HANDLER_LOG.setFormatter(logging.Formatter(FORMATTER_LOG))
URL_GET_EXTERNAL_IP = "https://api.ipify.org/"

ROOT = Path(os.path.dirname(os.path.abspath(__file__))).parent
EXECUTABLE_PATH = os.environ.get(
    "EXECUTABLE_PATH", f"{ROOT}/webdriver/chromedriver.exe")
TYPE_BROWSER = os.environ.get("TYPE_BROWSER", "chrome")

URL_SITE = "https://developer.clashroyale.com/"
URL_MY_ACCOUNT = "https://developer.clashroyale.com/#/account"

EMAIL = "georgearcego@hotmail.com"
SENHA = "Teste@1234"
TOKEN_NAME = "RPA_TEST"
TOKEN_DESC = "TOKEN RPA"

BASE_URL_CLASH_ROYALE = "https://api.clashroyale.com/v1/"
FILE_NAME = "LISTA_MEMBROS_CLAN.csv"
PARTIAL_TAG= "#9V2Y"
CLAN_NAME = "The resistance"
COUNTRY = "Brazil"
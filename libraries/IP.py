import variables
import requests
import logging

logger = logging.getLogger("LibraryAddrees")
logger.addHandler(variables.HANDLER_LOG)
logger.setLevel(variables.LOG_LEVEL)


class IP:

    def busca_ip_externo(self):
        try:
            logger.info(f"Consulta IP Externo Maquina no Site: {variables.URL_GET_EXTERNAL_IP}")
            ip_externo = requests.request("GET", variables.URL_GET_EXTERNAL_IP, timeout=5).text
            logger.debug(f"Ip externo: {ip_externo}")
            return ip_externo
        except Exception as e:
            logger.error(f"Erro ao buscar por ip externo. Detalhes: {e}")
            return None
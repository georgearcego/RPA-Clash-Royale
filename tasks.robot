*** Settings ***
Documentation   Template robot main suite.

Resource        main.resource

*** Tasks ***
Acessar Clash Royale
    Acessar Site Clash Royale  ${URL_SITE}

Realizar Login
    Realizar Login Site

Criar Nova Chave
    Gerar Nova Chave

Busca Informacoes Clan
    Filtrar Informacoes Clan  ${CLAN_NAME}  ${PARTIAL_TAG}  ${COUNTRY}

Lista Membros Clan
    Busca Membros Clan

Salva Lista Clan
    Guarda Resultados CSV

End Task
    # Sleep   15
    Delete Token
    Log     Fim da execução do robô.



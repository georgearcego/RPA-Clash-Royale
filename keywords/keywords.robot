*** Settings ***
Documentation       Template keyword resource.
Resource    main.resource

*** Keywords ***
Acessar Site Clash Royale
    [Arguments]  ${url}
    Open Browser  ${url}  browser=${TYPE_BROWSER}  executable_path=${EXECUTABLE_PATH}
    Maximize Browser Window

Realizar Login Site
    Wait Until Element Is Visible  ${LOGIN.element_login}
    ${visivel}  Is Element Visible  ${MY_ACCOUNT.element_cookie}
    Run Keyword If  ${visivel}  Click Element  ${MY_ACCOUNT.element_cookie} 
    Click Element                  ${LOGIN.element_login}
    Wait Until Element Is Visible  ${LOGIN.field_user}
    Input Text                     ${LOGIN.field_user}  ${EMAIL}
    Input Password                 ${LOGIN.field_password}  ${SENHA}
    Click Element                  ${LOGIN.button_login}
    Wait Until Page Contains Element  ${LOGIN.element_login_ok}


Gerar Nova Chave
    Go To  ${URL_MY_ACCOUNT}
    Wait Until Element Is Visible  ${MY_ACCOUNT.element_create_key}
    Click Element                  ${MY_ACCOUNT.element_create_key}
    Wait Until Element Is Visible  ${MY_ACCOUNT.element_key_name}
    Input Text                     ${MY_ACCOUNT.element_key_name}  ${TOKEN_NAME}
    Input Text                     ${MY_ACCOUNT.element_description}  ${TOKEN_DESC}
    ${ip}                          Busca Ip Externo
    Input Text                     ${MY_ACCOUNT.element_ip_address}  ${ip}
    Wait Until Element Is Visible  ${MY_ACCOUNT.element_button_create_key}
    Click Element                  ${MY_ACCOUNT.element_button_create_key}
    Wait Until Element Is Visible  ${MY_ACCOUNT.element_my_key}
    Click Element                  ${MY_ACCOUNT.element_my_key}
    ${TOKEN}                       Get Text  ${MY_ACCOUNT.element_token}
    Set Global Variable            ${TOKEN}
    


Delete Token
    Go To  ${URL_MY_ACCOUNT} 
    Wait Until Element Is Visible  ${MY_ACCOUNT.element_my_key}
    Click Element                  ${MY_ACCOUNT.element_my_key}
    Wait Until Element Is Visible  ${MY_ACCOUNT.element_delete_key}
    Click Element When Visible     ${MY_ACCOUNT.element_delete_key}
    Does Page Contain              Key deleted successfully.

Filtrar Informacoes Clan
    [Arguments]  ${clan_name}  ${tag_partial}  ${country} 
    Log To Console  Filtrando Clan: ${clan_name}, Cuja Tag comece com: ${tag_partial} e seja do pais: ${country}
    ${tag}  Get Tag Clan  ${TOKEN}  ${clan_name}  ${tag_partial}  ${country}
    Set Global Variable  ${tag}

Busca Membros Clan
    Log To Console  Buscando Informacoes da lista de menbros do Clan com a tag: ${tag}
    @{LISTA_MEMBROS}  Get Members Clan  ${TOKEN}  ${tag} 
    Set Global Variable  @{LISTA_MEMBROS}

Guarda Resultados CSV
    Log To Console  Criando uma lista de membros do clan com arquivo de nome: ${FILE_NAME}
    Create Csv Clan Members  ${FILE_NAME}  ${LISTA_MEMBROS}  


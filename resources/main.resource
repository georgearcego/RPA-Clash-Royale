*** Settings ***
Documentation     Importação de recursos para o robô
...               Aqui você fará todos os importes para o robô funcionar.

# Caso queira utilizar o fluxo de execução do Robocorp
Library         RPA.Tasks    schema=rpa-schema.json
Library         RPA.Browser.Selenium

# Importe de libraries de terceiros
Library         Collections

# Importe de suas libraries criadas na pastinha "libraries"
Library         IP
Library         ClashRoyale

# Importe de seus arquivos de keywords
Resource        keywords.robot
Resource        locators.resource
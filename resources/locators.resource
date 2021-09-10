Documentation           Segue um exemplo de boas práticas para armazenar os localizadores.
...                     Criando um dicionario para deixar extruturado por locais do sistema como exemplo:
...                     LOGIN e MENU
*** Variables ***
&{LOGIN}                element_login=xpath://div/a[contains(.,"Log In")][1]
...                     field_user=xpath://input[@id="email"]
...                     field_password=xpath://input[@id="password"]                     
...                     button_login=xpath://button[@type="submit"]
...                     element_login_ok=xpath://a[contains(.,"My Account")]



&{MY_ACCOUNT}           element_my_key=xpath://li[@class="api-key"]
...                     element_delete_key=xpath://span[contains(.,'Delete Key')]
...                     element_create_key=xpath://span[contains(text(), "Create New Key")]
...                     element_key_name=xpath://input[@id="name"]
...                     element_description=xpath://textarea[@id="description"]
...                     element_ip_address=xpath://input[@id="range-0"]
...                     element_button_create_key=xpath://span[contains(text(), "Create Key")]
...                     element_token=xpath://samp[contains(@data-reactid,'.0.2.0.1.0.0.0.1.0.0.1.0')]
...                     element_cookie=xpath://a[@aria-label="dismiss cookie message"]
* Settings *
Library  AppiumLibrary
Suite Setup  Set Appium Timeout  10s
Resource  login-pass.robot

* Keywords *
Abrir aplicativo teste
  Open Application  http://localhost:4723
  ...  automationName=UiAutomator2
  ...  platformName=Android
  ...  deviceName=Pixel4
  ...  app=C:\\Users\\leonardo.baestero\\Desktop\\QAfood\\app\\qazandofood.apk
  ...  udid=emulator-5554

Login
  Wait Until Element Is Visible  ${TITULO_INICIAL}  10S
  Input Text  accessibility_id=email  ${EMAIL}
  Input Text  accessibility_id=password  ${SENHA}
  Click Element  accessibility_id=login-button
  Wait Until Page Contains Element    ${SELECIONE_ENDEREÇO}  10s

Aguardar
  Sleep    5s

* Test Cases *
Cenario 1: Login com credenciais válidas 
  Abrir aplicativo teste
  Aguardar
  Login

Cenario 2: Login com senha inválida
  Abrir aplicativo teste
  Aguardar
  Input Text  accessibility_id=email  ${EMAIL}
  Input Text  accessibility_id=password  123
  Click Element  accessibility_id=login-button
  Element Should Be Visible  ${ERRO_LOGIN}  

Cenario 3: Login com email não cadastrado
  Abrir aplicativo teste
  Aguardar
  Input Text  accessibility_id=email  email@errado.com
  Input Text  accessibility_id=password  123
  Click Element  accessibility_id=login-button
  Element Should Be Visible  ${ERRO_LOGIN}  

Cenario 4: Login com campos vazios
  Abrir aplicativo teste
  Aguardar
  Click Element  accessibility_id=login-button
  Element Should Be Visible  ${ERRO_LOGIN}  

Cenario 5: Logout com sucesso 
  Abrir aplicativo teste
  Aguardar
  Login
  Press Keycode  4
  Element Should Be Visible  ${TITULO_INICIAL}  

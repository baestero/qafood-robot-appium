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
  ...  app=${EXECDIR}/app/qazandofood.apk
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
Cenario 1: Login com sucesso 
  Abrir aplicativo teste
  Aguardar
  Login
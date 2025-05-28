* Settings *
Library  AppiumLibrary
Test Setup   Abrir aplicativo teste
Resource  ../variables.robot

* Keywords *
Abrir aplicativo teste
  Open Application  http://localhost:4723
  ...  automationName=UiAutomator2
  ...  platformName=Android
  ...  deviceName=Pixel4
  ...  app=C:\\Users\\leonardo.baestero\\Desktop\\github-baestero\\QAfood\\app\\qazandofood.apk
  ...  udid=emulator-5554
Login
  Wait Until Element Is Visible  ${TITULO_INICIAL}  10S
  Input Text  accessibility_id=email  ${EMAIL}
  Input Text  accessibility_id=password  ${SENHA}
  Click Element  accessibility_id=login-button
  Wait Until Page Contains Element   ${SELECIONE_ENDEREÇO}  10s

* Test Cases *
Cenario 1: Selecionar endereço e Buscar Restaurante com sucesso
  Login
  Click Element  ${SELECIONE_ENDEREÇO}
  Wait Until Element Is Visible  ${BOTAO_PERMITIR_lOCALIZACAO}  10s
  Click Element  ${BOTAO_PERMITIR_lOCALIZACAO}
  Input Text   ${PESQUISAR}  Bulldog
  Click Element    xpath=//android.view.ViewGroup[@content-desc="store-list-item"]/android.view.ViewGroup[1]/android.widget.ImageView
  Wait Until Element Is Visible  accessibility_id=store-name  10s
  Element Text Should Be  accessibility_id=store-name  Bulldog Hamburgueria

Cenario 2: Bucar Restaurante sem selecionar endereço
  Login
  Wait Until Element Is Visible    ${PESQUISAR}
  Input Text   ${PESQUISAR}  Bulldog
  Click Element    xpath=//android.view.ViewGroup[@content-desc="store-list-item"]/android.view.ViewGroup[1]/android.widget.ImageView
  Wait Until Element Is Visible    id=android:id/message    10s
  ${alert_text}=    Get Text    id=android:id/message
  Should Be Equal As Strings    ${alert_text}    Ops... Selecione o endereço para continuar


Cenario 3: Bucar Restaurante inexistente
  Login
  Wait Until Element Is Visible    ${PESQUISAR}
  Input Text   ${PESQUISAR}  inexistente
  Wait Until Element Is Visible  //android.widget.TextView[@text="Nenhum restaurante encontrado."]  10s  




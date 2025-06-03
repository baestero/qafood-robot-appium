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
  Click Element  ${BOTAO_LOGIN} 
  Wait Until Page Contains Element   ${BOTAO_SELECIONE_ENDEREÇO}  10s

* Test Cases *
Cenario 1: Selecionar endereço e Buscar Restaurante com sucesso
  Login
  Click Element  ${BOTAO_SELECIONE_ENDEREÇO}
  Wait Until Element Is Visible  ${BOTAO_PERMITIR_lOCALIZACAO}  10s
  Click Element  ${BOTAO_PERMITIR_lOCALIZACAO}
  Input Text   ${PESQUISAR}  Bulldog
  Click Element    ${RESTAURANTE_PESQUISADO}
  Wait Until Element Is Visible  ${RESTAURANTE_NOME}  10s
  Element Text Should Be  ${RESTAURANTE_NOME}  Bulldog Hamburgueria

Cenario 2: Bucar Restaurante sem selecionar endereço
  Login
  Wait Until Element Is Visible    ${PESQUISAR}
  Input Text   ${PESQUISAR}  Bulldog
  Click Element    ${RESTAURANTE_PESQUISADO}
  Wait Until Element Is Visible    ${ERRO_ENDERÇO}    10s
  ${alert_text}=    Get Text    ${ERRO_ENDERÇO}
  Should Be Equal As Strings    ${alert_text}    Ops... Selecione o endereço para continuar


Cenario 3: Bucar Restaurante inexistente
  Login
  Wait Until Element Is Visible    ${PESQUISAR}
  Input Text   ${PESQUISAR}  inexistente
  Wait Until Element Is Visible  ${ERRO_RESTAURANTE_INEXISTENTE}   10s  




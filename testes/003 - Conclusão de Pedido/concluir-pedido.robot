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

Scroll Down Until Visible
  [Arguments]    ${locator}
  FOR    ${i}    IN RANGE    0    5
      ${visivel}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
      Exit For Loop If    ${visivel}
      Swipe By Percent    50    80    50    30
  END

* Test Cases *
Cenario 1: Adicionar produto ao carrinho e concluir pedido com sucesso
  Login
  Click Element  ${BOTAO_SELECIONE_ENDEREÇO}
  Wait Until Element Is Visible  ${BOTAO_PERMITIR_lOCALIZACAO}  10s
  Click Element  ${BOTAO_PERMITIR_lOCALIZACAO}
  Input Text   ${PESQUISAR}  Shushi Home
  Click Element   ${RESTAURANTE_PESQUISADO}
  Wait Until Element Is Visible  ${RESTAURANTE_NOME}   10s
  Element Text Should Be  ${RESTAURANTE_NOME}  Shushi Home
  Click Element  ${BOTAO_ADICIONAR_AO_CARRINHO}
  Click Element    ${BOTAO_ABRIR_CARRINHO} 
  Wait Until Element is Visible  ${TITULO_SACOLA} 
  Click Element  ${BOTAO_CONFIRMAR_PEDIDO} 
  Wait Until Element Is Visible  ${TITULO_FINALIZAR_PEDIDO} 
  Scroll Down Until Visible    ${BOTAO_CARTAO_CREDITO} 
  Click Element  	${BOTAO_CARTAO_CREDITO} 
  Click Element    ${BOTAO_FINALIZAR_PEDIDO}
  Wait Until Element Is Visible    ${TITULO_PEDIDO_CONCLUIDO}


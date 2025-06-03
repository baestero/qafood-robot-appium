*** Variables ***
${EMAIL}  teste@teste.com
${SENHA} 	123456

${TITULO_INICIAL}  //android.widget.TextView[@text="Falta pouco pra matar sua fome!"]
${TITULO_SACOLA}  //android.widget.TextView[@text="Sacola"] 
${TITULO_FINALIZAR_PEDIDO}  //android.widget.TextView[@text="Finalizar pedido"] 
${TITULO_PEDIDO_CONCLUIDO}  accessibility_id=order-sucess-txt

${BOTAO_LOGIN}  accessibility_id=login-button
${BOTAO_SELECIONE_ENDEREÇO}  //android.widget.TextView[@text="Selecione seu endereço..."]
${BOTAO_PERMITIR_lOCALIZACAO}  id=android:id/button1 
${BOTAO_FINALIZAR_PEDIDO}  accessibility_id=do-order-button
${BOTAO_CONFIRMAR_PEDIDO}  accessibility_id=confirm-order-button
${BOTAO_CARTAO_CREDITO}  //android.widget.TextView[@text="Cartão de crédito"]
${BOTAO_ABRIR_CARRINHO}  accessibility_id=open-cart-button 
${BOTAO_ADICIONAR_AO_CARRINHO}  xpath=(//android.view.ViewGroup[@content-desc="add-item-buttom"])[1]/android.widget.ImageView

${ERRO_LOGIN}  //android.widget.TextView[@text="Erro ao realizar login"] 
${ERRO_ENDERÇO}  id=android:id/message 
${ERRO_RESTAURANTE_INEXISTENTE}  //android.widget.TextView[@text="Nenhum restaurante encontrado."] 

${PESQUISAR}  accessibility_id=search-field
${RESTAURANTE_PESQUISADO}  //android.view.ViewGroup[@content-desc="store-list-item"]/android.view.ViewGroup[1]/android.widget.ImageView
${RESTAURANTE_NOME}  accessibility_id=store-name


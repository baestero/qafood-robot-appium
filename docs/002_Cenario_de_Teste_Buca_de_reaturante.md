### Cenário de Teste 002 - Selecionar endereço e buscar restaurante com sucesso

**Descrição**: Validar que o usuário consegue selecionar um endereço e buscar um restaurante específico no aplicativo QAfood.

---

#### Tipo de Teste

- Funcional

#### Software

- QAfood

#### Versão

- 1.0

#### QA Responsável

- Leonardo Baestero

---

#### Pré-condições

- O aplicativo QAfood está instalado no dispositivo/emulador.
- O Appium server está rodando localmente (`http://localhost:4723`).
- Usuário de teste cadastrado no sistema.

---

#### Casos de Teste

---

### Caso 1 - Selecionar endereço e buscar restaurante "Bulldog Hamburgueria" com sucesso

**Passos**:

1. Abrir o aplicativo QAfood no dispositivo/emulador.
2. Realizar login com credenciais válidas (preencher campos **Email** e **Senha** e clicar em **Entrar**).
3. Na tela principal, clicar no botão **Selecionar Endereço**.
4. Quando solicitado, clicar no botão **Permitir Localização** para permitir acesso à localização do dispositivo.
5. No campo de pesquisa, digitar o nome do restaurante **Bulldog**.
6. Selecionar o restaurante **Bulldog Hamburgueria** da lista apresentada.
7. Aguardar o carregamento da tela do restaurante.

**Resultado esperado**:

O nome **Bulldog Hamburgueria** é exibido corretamente na tela do restaurante, confirmando que a busca foi realizada com sucesso.

---

### Caso 2 - Buscar restaurante sem selecionar endereço

**Passos**:

1. Abrir o aplicativo QAfood no dispositivo/emulador.
2. Realizar login com credenciais válidas (preencher campos **Email** e **Senha** e clicar em **Entrar**).
3. Sem selecionar endereço, aguardar a visibilidade do campo de pesquisa.
4. No campo de pesquisa, digitar o nome do restaurante **Bulldog**.
5. Selecionar o restaurante **Bulldog Hamburgueria** da lista apresentada.
6. Aguardar a exibição do alerta.

**Resultado esperado**:

O alerta exibido contém a mensagem **"Ops... Selecione o endereço para continuar"**, informando que é necessário selecionar um endereço antes de continuar.

---

Claro! Aqui está o cenário no formato que você pediu:

---

### Caso 3 - Buscar restaurante inexistente

**Passos**:

1. Abrir o aplicativo QAfood no dispositivo/emulador.
2. Realizar login com credenciais válidas (preencher campos **Email** e **Senha** e clicar em **Entrar**).
3. Aguardar a visibilidade do campo de pesquisa.
4. No campo de pesquisa, digitar o nome do restaurante **inexistente**.
5. Aguardar a exibição da mensagem **"Nenhum restaurante encontrado."**.

**Resultado esperado**:

O sistema exibe a mensagem **"Nenhum restaurante encontrado."**, indicando que a busca não retornou resultados.

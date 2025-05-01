### Cenário de Teste 001 - Login

**Descrição**: Validar a funcionalidade de login com diferentes condições.

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

- O aplicativo QAfood está instalado.
- O usuário está cadastrado no sistema.

#### Casos de Teste

##### Caso 1 - Login com credenciais válidas

**Passos**:

1. Abrir o aplicativo
2. Preencher o campo **Email** com credenciais válidas
3. Preencher o campo **Senha** com credenciais válidas
4. Clicar no botão **Entrar**

**Resultado esperado**:

- O usuário é direcionado para a tela principal.

---

##### Caso 2 - Login com senha inválida

**Passos**:

1. Abrir o aplicativo
2. Preencher o campo **Email** com credenciais válidas
3. Preencher o campo **Senha** com senha incorreta
4. Clicar no botão **Entrar**

**Resultado esperado**:

- A mensagem de erro **"Erro ao realizar login"** é exibida.

**Sugestão de melhoria**:

- Exibir a mensagem "Senha inválida" para melhor informar o usuário.

---

##### Caso 3 - Login com email não cadastrado

**Passos**:

1. Abrir o aplicativo
2. Preencher o campo **Email** com um email não cadastrado
3. Preencher o campo **Senha** com qualquer senha
4. Clicar no botão **Entrar**

**Resultado esperado**:

- A mensagem de erro **"Erro ao realizar login"** é exibida.

**Sugestão de melhoria**:

- Exibir a mensagem "Email inválido ou não registrado" para melhor informar o usuário.

---

##### Caso 4 - Login com campos vazios

**Passos**:

1. Abrir o aplicativo
2. Não preencher os campos **Email** e **Senha**
3. Clicar no botão **Entrar**

**Resultado esperado**:

- A mensagem de erro **"Erro ao realizar login"** é exibida.

**Sugestão de melhoria**:

- Exibir a mensagem "Preencha os campos obrigatórios para realizar o login ou cadastre-se" para melhor informar o usuário.

---

##### Caso 5 - Logout com sucesso

**Passos**:

1. Abrir o aplicativo
2. Preencher o campo **Email** com credenciais válidas
3. Preencher o campo **Senha** com credenciais válidas
4. Clicar no botão **Entrar**
5. Clicar no botão voltar do sistema operacional

**Resultado esperado**:

- O usuário é redirecionado à tela de login com os campos vazios.

**Sugestão de melhoria**:

- Adicionar um botão dedicado ao logout, com validação perguntando se o usuário deseja realmente sair.

---

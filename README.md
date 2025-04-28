# Testes Automatizados Robot + Appium - QAfood

Este projeto contém testes automatizados utilizando **Robot Framework** e **Appium** para testar o aplicativo **QAfood** (APK). Com cenários de testes documentados para garantir o funcionamento adequado e algumas sugestões de melhorias ao decorrer dos testes.

## Tabela de Conteúdos

- [Descrição](#descrição)
- [Instalação](#instalação)
- [Configuração do Ambiente](#configuração-do-ambiente)
- [Uso](#uso)
- [Testes Automatizados](#testes-automatizados)
- [Licença](#licença)

## Descrição

Este repositório contém uma suíte de testes automatizados que validam funcionalidades chave do aplicativo QAfood, como o **login**. O framework utilizado é o **Robot Framework**, e a automação de testes em dispositivos móveis é realizada com **Appium**.

### Funcionalidade do Projeto

Atualmente, o foco do projeto está no teste da funcionalidade de **login** com diferentes cenários, como login com credenciais válidas e inválidas.

## Instalação

Para executar os testes, siga as instruções abaixo:

### Pré-requisitos

- **Node.js** (se necessário para Appium)
- **Robot Framework**
- **Appium 2.0 +**
- **Python 3.x**
- **APK do QAfood**

### Passos para Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/baestero/qafood-testing.git
   cd qafood-testing
   ```

2. Instale as dependências:

   ```bash
   pip install -r requirements.txt
   ```

3. Instale o **Appium** (se ainda não estiver instalado):

   ```bash
   npm install -g appium
   ```

4. Configure o ambiente Android (se necessário):

   - Defina as variáveis de ambiente `ANDROID_HOME`.
   - Instale o **Android SDK** e configure o emulador ou dispositivo físico.

5. Baixe o **APK do QAfood** e coloque-o no diretório de testes.

## Configuração do Ambiente

Certifique-se de que os seguintes parâmetros de ambiente estão configurados corretamente:

- **Appium Server URL**: URL do servidor Appium.
- **Device Name**: Nome do dispositivo ou emulador.
- **App Path**: Caminho para o APK do QAfood.

### Exemplo de Configuração (configuração inicial no arquivo `config.json`):

```json
{
  "appium_server_url": "http://localhost:4723",
  "appium:deviceName": "emulator-5554",
  "appium:automationName": "UiAutomator2",
  "app_path": "/path/to/qafood.apk"
}
```

## Uso

Para rodar os testes, utilize o seguinte comando:

```bash
robot tests/login.robot
```

Isso irá executar todos os testes definidos no arquivo `login.robot`, que abrem o aplicativo e testam a funcionalidade de login.

## Testes Automatizados

Os testes estão organizados em arquivos **.robot** utilizando a sintaxe do **Robot Framework**. Abaixo estão alguns cenários de teste documentados para **Login** e sugestões de melhorias que encontrei como introdução. Caso queira ver mais cenários ou planos de teste completos, consulte a raiz do projeto para acessar os outros arquivos de teste e planos detalhados.

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

## Licença

Este projeto está licenciado sob a Licença MIT.

## Autores

- Leonardo Baestero - [GitHub](https://github.com/baestero)

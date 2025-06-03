<<<<<<< HEAD
<<<<<<< HEAD
<img src="https://user-images.githubusercontent.com/46379117/192358781-9ca879e4-e55e-4d0d-b876-f9a4a2ed9ae8.png" width="600px">

_Web Data Visualization = Visualização de Dados na Web_

_Implementação de Referência para o seu Projeto de Primeiro Semestre_

<hr>

# Como usar

1. Clone este repositório em sua máquina.


1. Crie, no Banco de Dados, as tabelas necessárias para o funcionamento deste projeto.
- Siga as instruções no arquivo **/src/database/script-tabelas.sql**


3. Acesse o arquivo **app.js** e parametrize o ambiente.
- Se você estiver utilizando o Ambiente de Produção (remoto), comente a linha 2 e deixe habilitada a linha 1 onde está o valor **var ambiente_processo = 'producao';**
- Se você estiver utilizando o Ambiente de Desenvolvimento (local), comente a linha 1 e deixe habilitada a linha 2 onde está o valor **var ambiente_processo = 'desenvolvimento';**

4. Adicione as credenciais de Banco de Dados no arquivo **.env** ou em **.end.dev**, seguindo as instruções neste.

5. Acesse este repositório no seu terminal (GitBash ou VSCode) e execute os comandos abaixo:

```
npm i
``` 
_O comando acima irá instalar as bibliotecas necessárias para o funcionamento do projeto. As bibliotecas a serem instaladas estão listadas no arquivo **package.json** então é muito importante que este não seja alterado. Será criada uma nova pasta/diretório chamado **node_modules** quando o comando for finalizado, que é onde as bibliotecas estão localizadas. Não altere a pasta/diretório._

```
npm start
``` 

_O comando acima irá iniciar seu projeto e efetuar os comandos de acordo com a sua parametrização feita nos passos anteriores._

6. Para "ver" seu projeto funcionando, acesse em seu navegador o caminho **informado no terminal**.

7. Caso queira parar a execução, tecle **CTRL+C** no terminal em que o projeto está rodando.

## Adicionar novo recurso ao projeto

**"Recurso? O que é?"** Enquanto no Banco de Dados chamamos as tabelas de "entidades", quando tratamos de desenvolvimento WEB usamos a palavra "recurso" para se referir a algo que podemos criar, ler, atualizar ou deletar [1]. Estas ações são conhecidas como CRUD: Create, Read, Update e Delete. Para acessar cada ação, usamos os métodos HTTP: POST, GET, PUT e DELETE [2]. (Há outros verbos, porém com estes já conseguimos efetuar CRUDs). 

**Tabela para ajudar a fazer a associação**

<table>
  <tr>
    <th>C.R.U.D</th>
    <th>Ação</th>
    <th>Tradução</th>
    <th>Verbo HTTP *</th>
    <th>Comando BD</th>
  </tr>
  <tr>
    <td>C</td>
    <td>Create</td>
    <td>Criar</td>
    <td>POST</td>
    <td>INSERT</td>
  </tr>
  <tr>
    <td>R</td>
    <td>Read</td>
    <td>Ler</td>
    <td>GET</td>
    <td>SELECT</td>
  </tr>
  <tr>
    <td>U</td>
    <td>Update</td>
    <td>Atualizar</td>
    <td>PUT</td>
    <td>UPDATE</td>
  </tr>
  <tr>
    <td>D</td>
    <td>Delete</td>
    <td>Deletar</td>
    <td>DELETE</td>
    <td>DELETE</td>
  </tr>
</table>

_* Você verá o verbo HTTP sendo apontado nos arquivos em /routes_

**"E no meu projeto, o que seria um recurso?"** Em web-data-viz manipulamos os recursos **usuário**, **aviso** e **medida**. Podemos conferir isso vendo para quais entidades foram criados os caminhos de inserção e captura de dados, que envolve os diretórios **routes**, **controllers** e **models**.

Abaixo, uma figura que ajuda a compreender o caminho percorrido para, por exemplo, efetuar o cadastro de um usuário:


![image](https://github.com/BandTec/web-data-viz/assets/46379117/e8d63551-6153-4632-93b9-f59a1d2afd3e)


**Entendi o que é um recurso e gostaria de adicionar um novo ao meu projeto! Como faz?**  
- Primeiro, crie a tabela no Banco de Dados referente a este recurso. Exemplos de recursos comuns de serem adicionados ao projeto no primeiro semestre: Silo, Aquário, Sala, Andar, Endereço, Mercado, Prateleira, Unidade, Carro, Caminhão...  
- Assim que criada a tabela, faça todo o caminho de **front-end → routes → controllers → models** replicando o que já existe!  
- Exemplo, se você quiser a funcionalidade de adicionar um novo Aquário, deve criar arquivos referentes ao aquario nos diretórios e replicar também as funções.  
- Dica: A implementação de AVISO já contém o CRUD completo! :wink:
 
### Fontes bibliográficas

[1] https://datatracker.ietf.org/doc/html/rfc2396  
[2] https://datatracker.ietf.org/doc/html/rfc7231
=======
#  Campo de Emoções

**Campo de Emoções** é um site institucional que apresenta um **quiz informativo com 15 perguntas** sobre futebol masculino e feminino.  

O usuário tem **até 8 minutos** para responder ao quiz. Durante o jogo, sempre que o usuário acerta uma alternativa, ela fica **destacada em verde**.

Ao finalizar o quiz, um **Painel de Resultados** é exibido com:
- ✅ Total de acertos  
- ❌ Total de erros  
- ⏱️ Tempo gasto para responder  
- 📊 Um gráfico com seu desempenho

## Motivo

Escolhi a **Turma da Mônica** como inspiração porque é um desenho que fez parte da minha infância e sempre me marcou. A obra transmite valores importantes como **amizade, respeito, inclusão e diversidade**, inclusive no esporte, mostrando que **todos podem participar**, independentemente de gênero, aparência ou habilidades.

Além disso, o futebol tem um papel muito especial na minha vida: **jogo bola desde pequena**, e o esporte sempre foi o meu refúgio. É jogando futebol que **consigo me desligar do mundo e recarregar minhas energias**. Desde novinha, **frequento partidas de futebol e participei de vários campeonatos**, o que fortaleceu ainda mais minha conexão com o tema do projeto. Por isso, o quiz foi pensado como uma forma de valorizar esse esporte tão importante para mim e para tantas outras pessoas.

## Tela inicial

![Tela inicial](https://github.com/user-attachments/assets/4df6ea5f-98da-48b4-ae14-bdee77bc6fc0)


## Tecnologias Utilizadas

- HTML  
- CSS  
- JavaScript
- Trello

>>>>>>> 00da0fa2a9336cf3b4ea972977d2dcb4db52be0e
=======
#  Campo de Emoções

*Campo de Emoções* é um site institucional que apresenta um *quiz interativo com 15 perguntas* sobre o universo do futebol *masculino e feminino*. O objetivo é oferecer uma experiência informativa, educativa e divertida, promovendo maior conhecimento sobre o esporte como um todo.

## Motivo

A escolha do tema futebol não foi por acaso. O projeto nasceu da minha *paixão pelo esporte*, que tenho desde pequena, aprendi com meu avô e meu tio.  
Além disso, o projeto traz como referência de inclusão a Turma da Mônica, um desenho que marcou minha infância. Os gibis da turma, desde 1977, destacam a **inclusão no futebol*, com personagens diversos participando ativamente dos jogos. Essa abordagem reforça os valores de igualdade, respeito e amor ao esporte.

## Tela de inicio 
![Captura de tela 2025-06-02 175350](https://github.com/user-attachments/assets/48140442-3bc9-4e51-8eed-a2ddc05fd140)

## Como funciona

- O quiz possui *15 perguntas* sobre futebol, abrangendo fatos históricos, curiosidades e questões sobre o cenário masculino e feminino.
- O usuário tem até *8 minutos* para concluir.
- A cada resposta correta, a alternativa escolhida é *destacada em verde*.
- Ao final, um *Painel de Resultados* é exibido com:

  - ✅ Total de acertos  
  - ❌ Total de erros  
  - ⏱ Tempo total gasto  
  - 📊 Gráfico com os resultados usando *Chart.js*

## Tecnologias Utilizadas

- HTML5  
- CSS3  
- JavaScript  
- [Chart.js](https://www.chartjs.org/) – biblioteca para gráficos
- Trello
>>>>>>> 682b4ab9f087b2c34e89df0d53d2cd41e08d461e

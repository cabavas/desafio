# Validador de Senha - Aplicativo Flutter

Este é um aplicativo simples em Flutter que demonstra o uso de um validador de senha em um `TextFormField`. O aplicativo oferece um campo de entrada de texto onde os usuários podem digitar suas senhas, e o validador verifica se a senha atende a determinados critérios, em tempo real.

## Rodando o projeto

Para executar o projeto no Flutter, você pode usar o comando `flutter run` no terminal ou no prompt de comando na pasta raiz do projeto.

Caso alguma dependência não esteja corretamente instalada, basta executar o comando `flutter pub get` no terminal antes de executar o projeto.

## Rodando os testes

Para executar os testes no Flutter, você pode usar o comando `flutter test` no terminal ou no prompt de comando na pasta raiz do projeto.

## Dependências

O aplicativo utiliza as seguintes dependências:

- `flutter/material.dart`: O framework principal do Flutter para construir interfaces de usuário.
- `test/password_validator.dart`: Uma biblioteca personalizada de validação de senha.

## Função Principal

A função `main()` é o ponto de entrada do aplicativo. Ela chama a função `runApp()` para executar o aplicativo. Neste caso, ela cria uma instância do widget `MyApp` e a passa para `runApp()`.

## Widget MyApp

O widget `MyApp` é um widget sem estado que representa a raiz do aplicativo. Ele estende a classe `StatelessWidget` e substitui o método `build()`.

No método `build()`, é retornado um widget `MaterialApp`, que fornece a estrutura básica para o aplicativo. Ele possui um título, um tema e uma `HomePage` como rota inicial.

O tema do aplicativo é personalizado usando a classe `ThemeData`. Neste exemplo, ele define o esquema de cores principal como `Colors.deepPurple` e habilita o uso do Material Design 3.0 com `useMaterial3: true`.

## Widget HomePage

O widget `HomePage` também é um widget sem estado que representa a tela inicial do aplicativo. Ele estende a classe `StatelessWidget` e substitui o método `build()`.

No método `build()`, é retornado um widget `Scaffold`, que fornece a estrutura básica de layout para a página. Ele contém um widget `Center`, que é usado para centralizar verticalmente e horizontalmente o widget filho.

Dentro do widget `Center`, um widget `Padding` é usado para adicionar espaçamento ao redor do widget filho. Ele contém um widget `TextFormField`, que é um campo de entrada de texto para inserir a senha.

O `TextFormField` é configurado com uma borda, um texto de dica e um texto de rótulo usando a classe `InputDecoration`. Ele também especifica uma função de validação chamada `getPasswordValidator` para validar a senha digitada.

A propriedade `autovalidateMode` é definida como `AutovalidateMode.always`, o que significa que a validação será acionada automaticamente sempre que o usuário inserir ou alterar a senha.

## Função de Validador de Senha

A classe `password_validator.dart` contém a implementação do validador de senha personalizado. Ela inclui as seguintes funções:

### `validatePassword(String password)`

Esta função verifica se a senha fornecida atende aos seguintes critérios:
- Deve ter pelo menos uma letra minúscula.
- Deve ter pelo menos uma letra maiúscula.
- Deve ter pelo menos um caractere especial (como @, #, $, %, ^, &, +, =).
- Deve ter pelo menos uma letra (maiúscula ou minúscula).
- Deve ter no mínimo 7 caracteres de comprimento.

A função utiliza uma expressão regular para verificar se a senha atende a esses critérios. Ela retorna `true` se a senha for válida e `false` caso

 contrário.

### `getPasswordValidator(String? value)`

Esta função é usada como validador para o `TextFormField` na classe `HomePage`. Ela recebe o valor digitado no campo de senha como entrada e retorna uma mensagem de erro caso a senha seja inválida, ou `null` caso a senha seja válida.

A função verifica se o valor fornecido é nulo ou vazio. Se for, considera a senha como válida. Caso contrário, chama a função `validatePassword()` para verificar se a senha é válida. Se for válida, retorna `null`. Caso contrário, retorna a mensagem de erro "Senha inválida".

## Testes

A classe de teste `password_validator_test.dart` contém uma série de testes para verificar o comportamento do validador de senha. Os testes realizados são os seguintes:

1. `test('Valid Password')`: Verifica se a função `validatePassword()` retorna `true` para uma senha válida ("Abc@123").
2. `test('Invalid Password - Too Short')`: Verifica se a função `validatePassword()` retorna `false` para uma senha inválida devido ao comprimento insuficiente ("Abc123").
3. `test('Invalid Password - No Capitals')`: Verifica se a função `validatePassword()` retorna `false` para uma senha inválida que não contém letras maiúsculas ("abc@123").
4. `test('Invalid Password - No Lower Case')`: Verifica se a função `validatePassword()` retorna `false` para uma senha inválida que não contém letras minúsculas ("ABC@123").
5. `test('Invalid Password - No Special Character')`: Verifica se a função `validatePassword()` retorna `false` para uma senha inválida que não contém caracteres especiais ("Abcdefg").
6. `test('Valid Password')`: Verifica se a função `validatePassword()` retorna `true` para uma senha válida ("#forTe1").
7. `test('Valid Password')`: Verifica se a função `validatePassword()` retorna `true` para uma senha válida ("Voce@Consegue!2023").
8. `test('Valid Password')`: Verifica se a função `validatePassword()` retorna `false` para uma senha inválida ("senhafraca").
9. `test('Valid Password')`: Verifica se a função `validatePassword()` retorna `false` para uma senha inválida ("Qu@s1").

Esses testes garantem que o validador de senha está funcionando corretamente e valida as senhas de acordo com os critérios estabelecidos.

## Conclusão

Este aplicativo Flutter demonstra uma implementação simples de um validador de senha em um `TextFormField`. Ele fornece um ponto de partida para criar um campo de entrada de senha com lógica de validação personalizada. 

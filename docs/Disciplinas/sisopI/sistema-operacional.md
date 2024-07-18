# Sistema Operacional

??? warning "Aviso"

Está página está inacabada e seus conteúdos não foram verificados

## 0. Resumo:

A computador é um conjunto de componentes interligados através de _hardware_ e _software_. Um computador deve possuir um processador e memória, mas como que o programador pode usufruir desses recursos? A resposta é com um **Sistema Operacional**, é claro que é possível escrever na própria linguagem de máquina para interagir com o _hardware_ mas isso torna qualquer tarefa simples em uma árdua. Tudo que um **SO** faz éabstrair e gerenciar recursos para o programador.

## 1. Introdução: 

Não é possível se dizer de maneira absoluta o que constitui um **sistema operacional**. Porém, cada **SO** tem como objetivo apresentar essas duas funções: Abstrair interfaces complexas em interfaces simples e fazer o gerenciamento desses recursos.

O sistema operacinal opera em **modo núcleo**, isso é, ele possui acesso completo a todo _hardware_. Qualquer outro _software_ opera em **modo de usuário**, onde apenas certas instruções são permitidas.[^1]

A arquitetura por baixo dos computadores é extremamente complexa. As instruções, por exemplo, variam conforme o processador em questão, onde um processador x86_64 irá ter instruções diferentes de um processador da arquitetura armv8. Outro exemplo poderia ser uma placa de rede, onde cada uma tem seu padrão. Seria muito complexo para um programador implementar**drivers** para essas interfaces para cada projeto que precisasse interagir com elas.

Sistemas Operacionais cuidam disso criando abstrações. Um exemplo é o _fopen()_ no C. Invés de precisar implementar códigos para interagir com o próprio disco rígido existem abstrações que facilitam tarefas como essa.

```C
#include <stdio.h>

FILE *fopen(const char *restrict pathname, const char *restrict mode);

```

> Boas abstrações transformam uma tarefa praticamente impossível em duas tarefas gerenciáveis [^1]


[^1]: Tanenbaum, A; Bos, Herbert. Sistemas Operacionais Modernos. 4ª ed. São Paulo, Brasil: Pearson Education do Brasil, 2016. pág 1; pág 3;

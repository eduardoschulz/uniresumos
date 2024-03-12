# Engenharia de Requisitos
Entenda que requisitos bem explícitos são extremamente importantes para o processo de software. Requisitos mal feitos normalmente geram projetos bugados e consideravelmente mais caros.
- Sempre escute o usuário e MANDE ele te passar o processo completo errar menos
- se acontecer alguma coisa a culpa sempre vai ser da TI
- alguns sistemas já existem
    - se o requisito pede alguma coisa q já existe, usa o existente caraio
- a técnica de descobrir o q fzr exatamente ainda é trabalho do mano da TI
- requisitos bem definidos evitam erros de comunicação e implementações tortas entre software (ou pedaços dele)
## Causas de falha
- Requisitos mal elaborados geram erros de implementação e bugs futuros.
- Requisitos com fraca relação com os stakeholders.
  - Trabalho que provavelmente o cliente não vai usar.
- Dificuldade de alterar requisitos durante o desenvolvimento do software.
- Frequentemente, as implementações fogem do planejamento.
  - Mesmo assim, é necessário documentar tudo e alinhar expectativas.
  - Acreditar que alterações não acontecerão é um erro.
- Defina bem o escopo e mantenha o cliente sempre próximo (mesmo que seja chato).
  - Tenha processos de negócio bem definidos (às vezes nem o cliente realmente sabe).
    - Às vezes, o analista precisa desenhar o processo junto com o cliente.
### Por que requisitos?
- planejamentos
- estimativas (monetárias, principalemtne, softwares são caros)
- definição de escopo de projeto
    - às vezes precisa limitar o usuário nos pedidos (sim, eles pedem coisa pra caralho no mesmo ticket/projeto, n necesariamente relacionadas)
- planejamento de testes de qualidade
- administração de riscos
    - n atender uma norma pode gerar uma multa
        - é um risco querendo ou n
    - ou ainda aplicações de alto risco de vidas em caso de erro
## visão geral de projeto de desenvolvimento

Análise de Requisitos    | % do custo de desenv. | % dos erros introduzidos | % dos erros encontrados | Custo relativo de correção
-------------------------|:---------------------:|:------------------------:|:-----------------------:|:---------------------------:
Modelagem e Projeto      | 5                     | 55                       |  18                     | 1
Codificação              | 25                    | 30                       | 10                      | 1-1,5
Teste                    | 50                    |                          |                         | 
Validação e Documentação | 10                    | 10                       | 50                      | 1 - 5
Manutenção               |                       | 5                        | 22                      | 10 - 100

- erros de modelagem e projeto são os mais custosos de se corrigir (e onde mais eles aparecem)
    - esses se propagam até o fim do projeto se deixar 
    - aí a manutenção precisa arrumar o trem andando
- custos de correção só dps na manutenção é pior q parar no meio e voltar
## Requisitos
São, de certo modo, acordos entre os desenvolvedores de software e os clientes.
Da mesma forma que seria bastante complexo para o cliente montar a solução por própria conta, também é bastante complexo dos desenvolvedores elaborarem um software sem nenhum norte para seguir.
Além disso, eles evitam problemas futuros quando o software estiver pronto e não ser exatametne o que o cliente queria ou ainda questões do presente, tais qual aumento indevido do escopo do projeto.
“consiste no uso sistemático e repetitivo de técnicas para cobrir
atividades de obtenção, documentação e manutenção de um
conjunto de requisitos, que atendam aos objetivos de negócio e
que sejam de qualidade.” (VAZQUEZ; SIMÕES, 2016)
### Níveis de requisitos
Existem diferentes níveis de requisitos para que haja uma diferenciação mínima entre os assuntos, mesmo dentro do ambiente de elaboração de requisitos.
A separação de temas e divisão entre os mais técnicos e gerais é importante durante a gerência do projeto.
- basicamente o q precisa fzr
    - n é o como
- normalmente usuários tentam vir com soluções de primeira
    - sempre pergunte o suficiente pra entender a issue dele
    - normalmente a necessidade n é atendida pela solução dele
    - sim, tu é um psicólogo pra entender

#### Requisitos de usuário
- imaginação forte do usuário
- extremamente alto nível
- expectativas do user
- públicos alvo são bastante diferentes
    - gerência e contratantes
    - arquitetos

#### Requisitos de sistema
- feito pela TI
- é bem mais específico
- precisa detalhar o proceso feito pelo time
- um refinamento "natural" dos requisitos do usuário
- público engloba
    - arquitetos analistas e desenvolvedores 
    - às vezes coloca o usuário final pra acompanhar a montagem

#### Requisitos funcionais
- funcionalidade de sistema
- permite algumas funções pelo usuário
- geridos por equipes um tanto mais técnicas

#### Requisitos não-funcionais 
- regras de negócio
- leis (trabalhistas)
    - privacidade de dados (LGPD e GDPR)
    - encarecem os sistemas - ainda mais se n tem preocupação com segurança desde o início
    - seguança da informação tá bem requisitada hj em dia (inclusive a área de testes)
- relacionamento com infra-estrutura
    - às vezes precisa considerar o ambiente de execução
- vira uma característica do sistema

### classificando requisitos
- tem uma árvore inteira de requisitos n-funcionais

## Atividades
- estudo da Viabilidade
    - ver se dá pra fzr o q o customer pede pra fzr
    - dependendo do projeto pode levar bastante tempo
    - relatório de Viabilidade
- elicitação e análise de requisitos
    - começo da modelagem
- especificação
    - docuemtação de como o sustema funciona pra modelagem e codagem
- validação
    - processo de double-check com o user pra dar seguimento
    - provalvemente feito em várias rodadas
- em tese esse trabalho diminui com o tempo de desenvolvimento
- precisa fzr gestão de rastreabilidade
- ciclos de requisitos são sempre presentes
- as atividades mais efetivas são realizadem em organizações de ciclos entre as fazes de elicitação, organização, priorização e especificação dos requisitos


## Referências:
* SOMMERVILLE, Ian. Engenharia de Software. São Paulo: Pearson Prentice Hall, 2011.
* VAZQUEZ, Carlos E.; SIMÕES, Guilherme S. Engenharia de Requisitos: software orientado ao
negócio. Rio de Janeiro: Brasport, 2016.
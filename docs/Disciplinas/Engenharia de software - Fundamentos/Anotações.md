# Introdução à Engenharia de Software: conceitos, princípios, padrões e práticas
- Por que sempre se começa com as apresentações pessoais?
    - uma pergunta que sempre me faço
- "...aplicação de uma abordagem sistemática..." - IEEE Std 610.12 (1990)
    - pensar em quem vai dar manutenção é MARAVILHOSO -> por favor faça isso
    - documente seus códigos
    - pense na escalabilidade
        - provavelmente nenhum programa vai ficar igual pra sempre
Tenha sempre em mente que códigos monolito são bastante caros e, apesar de poderem servir para aplicações mais simples, o ideal é montar todo e qualquer código com escalabilidade e o mínimo de separação entre os serviços dentro dele.
Sei que algumas vezes é muito fácil de se deixar levar, mas é necessário ter controle sobre as próprias criações
- eng. de Software data de 60
    - obviamente era tecnologia militar - NATO (OTAN), 1960
        - Boa parte das tecnologias eram para uso militar ou tem alguma relação belicosa de demonstração de poder
        - Internet inclusive só surgiu por causa da Corrida Especial
    - NATO (OTAN) Conference on Software Engineering, 1968
- em 1970 praticamente n tinha Software
    - n tinha padrão de montagem
### Crise do Software
- isso englobava problemas básico de engenharia civil, mas com Software
Normlamente no início de trends é assim, sem muito padrão de projeto ou de execução.
Aqui no caso, o pessoal fazia a programação no estilo freestile mesmo, sem se preocupar demais com nada.
Os problemas da crise do software englobam problemas básicos de engenharia; todavia, eles ainda existem devido ao fato de:
- Softwares aumento de complexidade continuamente
- Novos processos (usualmente mais ágeis) quebram os paradigmas antigos
- Simplesmente surgem problemas novos que as documentações precisam revisar que simplesmente não existiam na época de escrita do texto.
### IEEE SWEBOK
- é um dicinário (bíblia) para padrões de projeto
- Software Engineering Body of Knowledge
- https://www.computer.org/education/bodies-of-knowledge/software-engineering para pegar a versão mais atualizada
## mensuração de preço de aplicação
Da mesma forma que saber construir uma casa não é só saber uma laje, produzir um software comercial não é só programar
- sempre vai depender
- projetos corporativos podem chegar a milhões de dólares e anos pra serem desenvolvidos
- preços, prazos, etc, sempre são variáveis
Variabilidade nos preços e escalas também depende bastante da criticalidade do projeto.
Certamente projeto mais simples como uma agenda são mais tolerantes a erro e requerem menos cuidado (apesar de que nunca se deve programar despretenciosamente) do que um projeto de OS para uma aeronave.
O Boeing 777 por exemplo, lançado em 1995 e o primeiro problema de software causou 2 mortes apenas em 2006, depois do avião em particular ter 36000 horas de voo e 5000 decolagens/aterrisagens
### problemas e erros são caros (normalmente)
- erros de implementação, principalmente em projetos OnPremise e sem atualizações em tempo real, podem ser fatais pra produtos(vide exemplo do Boeing 777)
    - ainda mais se a aplicação for bastante utilizada
    - problemas escalam dependendo do contexto
        - erros em sistemas aviônicos ou de saúde podem ser fatais
- Therac 25
    - essa máquina de raio-X mandava tiros 100x maiores de radiação pra exames
    - umas 5 pessoas morreram pelo menos 
    - não haviam alertas de erros
- metodologias e tamanhos de projeto determinam bastante a taxa de sucesso dele
    - Pojetos menores sã obivamente mais simples de realizar
## Processo de software
Qualidade de software é tão importante quanto quantidade.
Ninguém vai usar um software bugado
- antes de desenvolver precisa organizar o esquema
    - e um tipo de hierarquia
### cascata
- faz cada parte cascateado
- n abraça nenhuma mudança
    - ai quero mudar requisitos - azar
- bastante problemático e enxuto, mas ainda usam
- modelo de 1970
Claramente um modelo fruto de seu tempo
### iterativo
- similar ao cascata mas altera muitos requisitos durante o Processo
    - modula os requisitos e implementa em partes
- o modelo espiral tá aqui dentro
- trabalhos com ciclos de tempo
    - a falha aqui é menor já
    - a validação vai ser constante dentro dos ciclos
Dificilmente vai ficar pronto na primeira versão.
"Andar sobre a água e desenvolver software a partir de uma especificação é fácil. Se ambos estiverem congelados..." - Edward V. Berard (Engenheiro de Software renommado)
Ao final de cada iteração o projeto avança uma parte, mas muda em outras para acompanhar a evolução do projeto.
- Exemplo de mês:

Dias    | Trecho
:-----: | :--------:
9       | Análise
6       | Projeto
12      | Desenvolvimento
3       | Testes

### ágil
Metodologias ágeis funcionam muito bem com projetos de MVP e testes de conceito, que realmente precisam de rapidez elevada.
Alguns adeptos dessas metodologias esquecem de fazer documentações.
- http://agilemanifesto.org
- manifesto ágil de 2010
- mais proximidade com o usuário
    - a validação do sistema é feita diretamente por eles
- pessoal ignorou a documentação kkkkkkkkkkk
    - como vou dar manutenção sem documentação?
    - GO HORSE!!!
    - https://gohorse.com.br/
- Scrum e eXtreme Programming são bastante abrangentes e distribuídas
    - frameworks né
- aqui recursos e tempo valem mais que o escopo (manter padrão)
## Ciclo de vida de software 
- sempre vai existir
- projeto precisa:
    - especificação
        - problemas
    - estruturação
        - modelagem
        - especificação de funcionalidade
            - no fim as regras de negócio e validação de software dependem bastante do usuário (customer)
    - codificação
    - testes
    - manutenção
- o esmero dessas fases depende bastante de projero pra projeto

DATA: 06/Mar/2024
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
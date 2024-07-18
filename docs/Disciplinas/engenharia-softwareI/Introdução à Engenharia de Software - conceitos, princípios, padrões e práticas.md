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


## Referências:
* SOMMERVILLE, Ian. Engenharia de Software. São Paulo: Pearson Prentice Hall, 2011.
* VAZQUEZ, Carlos E.; SIMÕES, Guilherme S. Engenharia de Requisitos: software orientado ao
negócio. Rio de Janeiro: Brasport, 2016.
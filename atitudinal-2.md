# Atividade atitudinal 2

Com base nas revisões de conceitos que estamos tendo, o que podemos tomar como conhecimento é que **precisamos saber criar documentações**, e em bancos de dados não seria diferente essa necessidade.

Principalmente **DER**(diagrama de entidade relacional) e **MER**(modelo de entidade relacional), veja alguns exemplos abaixo desses documentos:

![Screenshot de um DER](https://arquivo.devmedia.com.br/artigos/Roniere_Almeida/Criando_relacionamentos_SQL_Server/image011.jpg)
EXEMPLO DE DER

![Screenshot de um MER](https://cdn1.gnarususercontent.com.br/1/1782135/fa556817-5c2b-401c-8098-3f2bc98d49a6.png)
EXEMPLO DE MER


## CADA DIAGRAMA TEM SUA FUNCIONALIDADE

Precisamos ver conceitos importantes para montar esses documentos, entre os conceitos estão:
- Cardinalidade
- Chaves primárias
- Chaves estrangeiras
- Atributos

E além disso precisamos de ferramentas para montar esses diagramas, não podemos anotar em uma folha de papel apenas, ou desenhar em um papel de pão, algumas **RECOMENDAÇÕES** de softwares para isso seriam:
1. [dbdiagram](dbdiagram.io)
2. [brmodelo](https://www.brmodeloweb.com/lang/pt-br/index.html)
3. [lucidchart](https://www.lucidchart.com/pages/landing?utm_source=google&utm_medium=cpc&utm_campaign=_chart_en_tier3_mixed_search_brand_phrase_&km_CPC_CampaignId=1484560204&km_CPC_AdGroupID=60168106031&km_CPC_Keyword=%2Blucidcharts&km_CPC_MatchType=b&km_CPC_ExtensionID=&km_CPC_Network=g&km_CPC_AdPosition=&km_CPC_Creative=442433233376&km_CPC_TargetID=aud-812368091438:kwd-334618660008&km_CPC_Country=1001729&km_CPC_Device=c&km_CPC_placement=&km_CPC_target=&gad_source=1&gclid=Cj0KCQiAoeGuBhCBARIsAGfKY7zuITqWlqtAXeI_MWaS1fWRiJQdlxg-27mxffD93dH-qC8pnRBNhAUaAs-REALw_wcB)

# O que vocês precisam entregar?

- UM DER de um banco de dados para uma rede social, **leiam e interpretem o caso e criem as tabelas**

> Uma startup quer criar uma rede social, e ela vai começar focando no principal, usuários e suas postagens
> Foram levantados alguns dados e iremos precisar na nossa plataforma que **os posts** tenhan:
> - data de postagem, contendo ano/mes/dia hora:minutos
> - legenda, o texto da postagem deve ser OBRIGATÓRIO, não importa se é apenas texto, ou texto e imagem
> - imagem, PODEMOS OU NÃO, postar imagens junto com legendas
> - curtidas, sendo um numero inteiro não negativo, diferente de algumas redes sociais
> - dono do post, quem postou, sendo essa uma chave estrangeira.
> 
> E precisamos que os usuários tenham:
> - nome de usuário, com no mínimo 5 caracteres e deve ser único (Ex: @meu_username)
> - celular, obrigatorio com codigo do pais, codigo de area e numero
> - email, obrigatorio
> - senha, obrigatorio

### Materiais de apoio para consultar

- [Video aulas de como fazer DER/MER](https://youtu.be/XCkd27GtZoM?si=hp8POGYZOVqJJ8Z4)
- [Padrões de nomes de tabelas e campos](https://gist.github.com/thiamsantos/654ec002f04c86d53611923a8b4c3a65)
- [Padrões a se seguir em bancos de dados](https://www.devmedia.com.br/padronizacao-de-nomenclatura-revista-sql-magazine-100/24710)
- [Como usar o brmodelo](https://youtu.be/ZYmRVCk_xBw?si=bLChdptcmm6NPxg7)
- [Como usar o brmodelo com outro professor](https://youtu.be/IjTtPfIv_aA?si=Mnwvyc-9udlCJDAU)

### Pontuação

- Padrões com os nomes das tabelas e nomes dos campos
- Cardinalidades
- Campos inseridos e tipos de dados **SE** o diagrama mostrar

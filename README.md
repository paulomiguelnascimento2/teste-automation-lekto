# Projeto quality-assurance-teste-lekto

O objetivo deste projeto é a criação de testes automatizados na plataforma web da lekto

## Arquitetura do Projeto
```
quality-assurance/
├── resources
│   ├── common
│   │   ├── base.resource
│   │   ├── common.resource
│   ├── data
│   ├── feature
│   │   │   └── agende-apresentacao
│   │   │       ├── Keywords-Agende-Apresentacao.robot
├── tests
│   ├── agende-apresentacao
│   │       └── agende-apresentacao.robot
├── .env
├── ENV.MD
├── .gitignore
├── README.md
└── requirements.txt
```

## O que preciso fazer antes de rodar o primeiro teste?

Antes de rodar o primeiro teste devemos certificar que temos todas as ferramentas e suas versões instaladas e configuradas corretamente.

### Ferramentas

- [Python](https://docs.python.org/3/), como linguagem de programação;
- [Robot Framework](https://robotframework.org/), como estrutura genérica de automação de teste;
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html), como lib de automação;
- [FakerLibrary](para geração de dados fakes)


Instalar todas as dependências necessárias, para isso você vai precisar rodar os seguintes comandos:

1 - `pip install pipenv`

2 - `pipenv shell`

3 - `pipenv install -r requirements.txt`


# Execução de testes

***Observação Windows:**
É necessário add o Git Bash no terminal do VSCode e utilizá-lo para o bom funcioanamento desses comandos. 

**Entendendo o comando para execução**
```
    pipenv run robot -d <pasta_report> <pasta_dos_testes>
```
- **Exemplo:** `pipenv run robot -d results tests`
    - onde -d é o alias do comando --outputdir, onde passamos em qual diretório vão ficar os resultados dos testes.
    - tests é o diretório onde estão as suites de test, é possivel passar uma pasta especifica. Ex:  `\tests\Agende-Apresentacao\Agende-Apresentacao.robot`
```
**Entendendo o comando para execução com tag**
```
    pipenv run robot -d <pasta_report> -i <nome_da_tag> <pasta_dos_testes>
```
- **Exemplo com tag:** `pipenv run robot -d results -i <TAG_DO_TESTE> tests`
    - onde -d é o alias do comando --outputdir, onde passamos em qual diretório vão ficar os resultados dos testes.
    - onde -i é o alias do commando --include, onde passamos o nome da tag que queremos utilizar.
    - TAG_DO_TESTE. é onde passamos o nome da tag que queremos usar.
    - tests é o diretório onde estão as suites de test, é possivel passar uma pasta especifica. 
**Exemplo com tag:** `pipenv run robot -d results -i <TAG_DO_TESTE> tests`

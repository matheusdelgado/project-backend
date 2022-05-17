# Projeto

### Configurações:

- Python 3.6 
- django
- djangorestframework

### Como executar:

1. Crie um ambiente virtual para execução do projeto
2. Faça as intalações dos pacotes utilizados: `cd requerients && pip3 install -r requeriments.txt && cd ..`
3. Crie o banco de dados e faça a migração deles: `cd Subjects && python3 manage.py migrate`, irá crar um banco chamado `db.sqlite3`
4. Na pasta Subjects rode o seguinte comando: `python3 manage.py runserver` e pronto.
5. A API estará rodando na seguinte rota: `localhost:8000/subject/` ou `http://127.0.0.1:8000/subject/`

### Como utilizar o admin:
1. Com os comandos acima já realizados você irá executar: `python3 manage.py createsuperuser` é irá criar uma conta
2. Após isso é só acessar `localhost:8000/admin/` e colocar seus dados cadastrados no passo 1

### Organizção do Projeto:

- Requirements: 
  - É onde fica o arquivo com todos os requisitos para execução do projeto.
- Subjects:
    - main: 
        - api: Configurações da API como rotas e serealização.
        - migrations: Onde ficam arquivos de migrações feitas para o banco de dados, como criações e edições de campos e tabelas.
        - models: Criação de modelos que serão criados no banco com seus campos.
    - Subjects:
        - Configurações do projeto para que sejam acessados as rotas e configurações da main.
        - Onde é criado o banco de dados.

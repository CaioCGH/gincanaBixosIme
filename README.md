# README

Primeiro verifique que você tem
```
Ruby v.2.5
Rails v.5
SQLite3
```
instalados.

Então dentro do diretório `/ginganaApp` inicie o banco de dados:
```
rails db:create
rails db:migrate
rails db:seed
```
Com a base de dados pronta, inicie o servidor:

```
rails server
```

Você poderá então verificar a aplicação em
```
localhost:3000
```

A aplicação também está deplyada em:
```
https://gincanabixosime.herokuapp.com/
```


Para resetar o banco (drop, create, migrate e seed):
```
./reset.sh
```

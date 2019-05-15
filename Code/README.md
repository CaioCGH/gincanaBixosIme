# README

Certifique-se que tem a versão 2.3.3 de ruby instalada, bem como sqlite3
Então instale Rails com
```
gem install rails
```
Instale as gemas com
```
bundle install
```
Inicie o servidor
```
rails server
```
Acesse-o, usando seu navegador na URL
```
http://localhost:3000
```

Eu ainda não sei se isso é necessário rodar em cada máquina, mas se o bd não estiver funcionando:
```
rails db:create
rails db:migrate
rails db:seed
```

Para acessar o console:
```
rails console
```
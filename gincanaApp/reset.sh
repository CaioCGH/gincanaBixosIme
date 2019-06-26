#!/bin/bash

sudo kill -9 `ps -u postgres -o pid=` #isso mata todos os processos usando o postgres, inclusive o próprio postgres

sudo /etc/init.d/postgresql restart #reinicia o postgres


rails db:drop
rails db:create
rails db:migrate
rails db:seed
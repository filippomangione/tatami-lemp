# Tatami LEMP

Docker environment per lo sviluppo di applicativi fullstack.

Software disponibili:
- NGINX
- MySql 5.7.10
- PHP 7
- PHP-FPM
- Composer
- PhpMyAdmin
- NodeJs 14

## Setup
Scarica e installa Docker desktop in base al tuo Sistema Operativo: https://docs.docker.com/get-docker/

Duplica e rinomica .env.example in .env e modifica opportunamente le variabili d'ambiente.

Modificare almeno `APP_NAME` da cui dipenderà il nome dell'immagine finale buildata da docker. E' possibile anche specificare delle porte differenti in caso di conflitto.

## Sviluppo
Lancia tutti i servizi tramite Docker Compose:
```
docker-compose up --build
```

> Nota: la prima volta che i servizi vengono laciati il sistema impiegherà un pò di tempo in più perchè dovrà eseguire la build delle immagini. Le volte successive puoi omettere il flag `--build`.

La root di progetto in cui inserire i tuoi file è sotto `app`.

## Stop dei servizi
Ctrl + C per fermare i container.


## Bash
Puoi entrare nel container dell'app per eseguire comandi da linea di comando (ad es. installare una dipendenza).

Dopo aver lanciato i servizi esegui il comando:
```
docker-compose exec app bash
```

## Laravel
E' possibile installare anche Laravel entranto nel container ed eseguendo una installazione con composer.

Una volta installato:
- valorizza nel `.env` di Laravel le variabili del DB che hai inserito nel `.env` principale
- nel file di configurazione di nginx `config/nginx/default.conf` modifica il valore di `root` per specificare il path alla cartella `public` di Laravel (ad es. `/var/www/html/blog/public`)

Rilanciare il servizio di nginx:
```
docker-compose restart nginx
```


#!/bin/bash
# Aktualizacja pakietów i instalacja Apache (jeśli nie został zainstalowany)
apt-get update -y
apt-get install -y apache2

# Usunięcie domyślnego pliku Apache, aby CodeDeploy mógł wgrać nasz plik index.html bez błędów
if [ -f /var/www/html/index.html ]; then
    rm -f /var/www/html/index.html
fi
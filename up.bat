@echo off
chcp 65001
docker compose build

echo ==================================
echo 🔨  Build des images Docker...
echo ==================================
docker compose build

echo ==================================
echo 🚀  Lancement des conteneurs...
echo ==================================
docker compose up -d

echo ==================================
echo ✅  Projet démarré !
echo ==================================
pause
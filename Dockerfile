FROM codercom/code-server:latest

# Crée les dossiers nécessaires
RUN mkdir -p /home/coder/.local/share/code-server/User
RUN mkdir -p /home/coder/.config/code-server

# Copie du fichier de configuration VSCode (thème Abyss)
COPY settings.json /home/coder/.local/share/code-server/User/settings.json

# Applique un mot de passe de démarrage avec une config propre
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["printf 'bind-addr: 0.0.0.0:8080\\nauth: password\\npassword: test\\ncert: false' > /home/coder/.config/code-server/config.yaml && /usr/bin/code-server"]

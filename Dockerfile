# 1. Utiliser une image Python officielle
FROM python:3.10-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers du projet dans le conteneur
COPY . /app

# 4. Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# 5. Exposer le port utilisé par Flask
EXPOSE 8000

# 6. Lancer l'application
CMD ["python", "app.py"]

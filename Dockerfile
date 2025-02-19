# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . /app

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port de l'application
EXPOSE 5000

# Démarrer l'application Flask via Gunicorn
CMD ["gunicorn", "-w", "4", "--bind", "0.0.0.0:5000", "app:app"]

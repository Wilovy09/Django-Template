echo "Creating venv"
python3.9 -m venv venv

echo "Installing requirements..."
pip3 install -r requirements.txt

# Automatic migrations
#echo "Iniciando migraciones..."
#python manage.py makemigrations && python manage.py migrate

echo "--- LS ---"
pwd && ls

# Collecting StaticFiles
echo "Colectando StaticFiles..."
python3.9 manage.py collectstatic --noinput
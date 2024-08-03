# Django simple Template

- [Django](https://www.djangoproject.com/)
- [TailwindCSS](https://tailwindcss.com/docs/installation)
- [DaisyUI](https://daisyui.com/docs/customize/)
- [Django-web-components](https://github.com/Xzya/django-web-components)
- HotReload

**Es una base lista para ser clonada!**

## Antes de empezar a programar!

Tu carpeta `static/` ahora esta dentro de `theme/static/` si quieres agregar otras carpetas puedes cambiar tu configuracion.

```py
# mySite/settings.py
STATIC_URL = 'theme/static/'
```

Te recomiendo crear un entorno virtual, asi tendras mas control de todo

```sh
python -m venv NOMBRE
```

Activa tu entorno

```sh
# Unix
source NOMBRE/bin/activate
```

Instala los requerimientos, este archivo `requirements.txt` solo contiene lo basico para hacer funcionar esta pagina, asi que tienes que instalar los modulos faltantes

```sh
pip install -r requirements.txt
```

Ahora tenemos que instalar las dependencias de Tailwind con `npm`

```sh
python manage.py tailwind install

# y regresamos a la carpeta principal con:
cd ..
cd ..
```

## Desarrollo!

Para iniciar localmente debes de ejecutar Tailwind y luego el servidor de Django, el proceso debe ser en distintas terminales

```sh
# Terminal 1
python manage.py tailwind start
```

```sh
# Terminal 2
python manage.py runserver
```

Verifica tus `ALLOWED_HOSTS` y si tienes formularios no te olvides de `CSRF_TRUSTED_ORIGINS`

```py
ALLOWED_HOSTS = ['127.0.0.1', '.vercel.app']
CSRF_TRUSTED_ORIGINS = ['https://127.0.0.1', 'https://.vercel.app']
```

### Crea tu superusuario

```sh
python manage.py createsuperuser
```

## Estrucutura de carpetas

```txt
📁Django-Template
├──📄README.md
├──📄db.sqlite3
├──📁index
│  ├──📄__init__.py
│  ├──📄admin.py
│  ├──📄apps.py
│  ├──📁migrations
│  │  ├──📄__init__.py
│  ├──📄models.py
│  ├──📁templates
│  │  ├──📁components
│  │  │  └──📄card.html
│  │  └──📄index.html
│  ├──📄tests.py
│  ├──📄urls.py
│  └──📄views.py
├──📄manage.py
├──📁mySite
│  ├──📄__init__.py
│  ├──📄asgi.py
│  ├──📄settings.py
│  ├──📄urls.py
│  └──📄wsgi.py
├──📄requirements.txt
├──📁theme
│  ├──📄__init__.py
│  ├──📄apps.py
│  ├──📁static
│  │  └──📁css
│  │     └──📁dist
│  ├──📁static_src
│  │  ├──📁node_modules
│  │  ├──📄package-lock.json
│  │  ├──📄package.json
│  │  ├──📄postcss.config.js
│  │  ├──📁src
│  │  │  └──📄styles.css
│  │  └──📄tailwind.config.js
│  └──📁templates
│     ├──📄Layout.html
│     └──📁partials
│        ├──📄_footer.html
│        └──📄_navbar.html
└──📁venv
```
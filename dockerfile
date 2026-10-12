# Imagen base ligera de Python
FROM python:3.11-alpine

# Instalar git para poder clonar el repositorio
RUN apk add --no-cache git

# Establecer directorio de trabajo
WORKDIR /app

# Solicitar el código vía HTTPS al repositorio público
RUN git clone https://github.com/AlejandroD-P/dockerizando_una_aplicaci-n.git .

# Comando de ejecución
CMD ["python", "app.py"]
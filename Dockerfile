# our base image
FROM python:3.6.7-alpine3.8
MAINTAINER nintendochina <admin@nintendochina.com>

# copy files
COPY . /app

# install Python modules needed by the Python app
RUN pip install --no-cache-dir -r /app/requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# run the application
WORKDIR /app
CMD ["python", "app.py"]
# our base image
FROM alpine:3.5
MAINTAINER nintendochina <admin@nintendochina.com>

copy files
COPY . /app

# install Python modules needed by the Python app
RUN pip install -r /app/requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD ["python", "/app/app.py"]
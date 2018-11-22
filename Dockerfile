# our base image
FROM alpine:3.5
MAINTAINER nintendochina <admin@nintendochina.com>

# Install python and pip
RUN apk add --update py2-pip

# copy files
COPY . /app

# install Python modules needed by the Python app
RUN pip install --no-cache-dir -r /app/requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD ["python", "/app/app.py"]
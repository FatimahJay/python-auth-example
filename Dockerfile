FROM python:3.10.13-alpine

LABEL name="Python Application" \   
     maintainer="FATIMA JAMAL" \
     summary="Python application"

# Create app directory
WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

RUN pip install flask

CMD [ "python", "./app.py" ]

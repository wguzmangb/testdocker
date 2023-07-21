 FROM alpine:3.15
 FROM python:3.8.10


 WORKDIR /app
 

 COPY requirements.txt requirements.txt

 RUN pip3 install -r requirements.txt

 COPY . .

 EXPOSE 4000

 CMD ["python", "src/app.py"]
# FROM alpine:3.10

# RUN apk add --no-cache python3-dev \
#     && pip3 install --upgrade pip  

# WORKDIR /app 

# COPY . /app

# RUN pip3 install -r requirements.txt

# CMD ["python", "src/app.py"]


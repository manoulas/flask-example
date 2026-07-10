FROM python:3.10.20-slim
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7080

CMD [ "python", "./app.py" ]

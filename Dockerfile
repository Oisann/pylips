FROM python:3-alpine
WORKDIR /app
RUN apk add build-base
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT [ "python3", "-u", "pylips.py" ]

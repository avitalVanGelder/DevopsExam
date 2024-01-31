FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN apt update

RUN apt install -y curl

RUN curl -sL https://netfree.link/dl/unix-ca.sh | sh

RUN pip config set global.cert /usr/lib/ssl/certs/ca-certificates.crt

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "convert_image_to_pdf.py"]

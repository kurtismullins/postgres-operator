FROM python:3.8

WORKDIR /src

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python3", "-m", "operator.py"]

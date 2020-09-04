FROM python:3.8

WORKDIR /src

COPY requirements.txt .
RUN python -m pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python", "operator.py"]

#FROM python:3.8
FROM registry.access.redhat.com/ubi8/python-38

WORKDIR /src

COPY requirements.txt .
RUN python -m pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python", "operator.py"]

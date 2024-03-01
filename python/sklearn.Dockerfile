FROM python:3.13.0a4-slim

COPY . .
RUN pip install --upgrade pip && pip install -e ./kfserving
RUN pip install -e ./sklearnserver
ENTRYPOINT ["python", "-m", "sklearnserver"]

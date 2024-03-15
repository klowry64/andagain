FROM python:3.13.0a4-slim

RUN apt-get update && apt-get install libgomp1
COPY . .
RUN pip install --upgrade pip && pip install -e ./kfserving
RUN pip install -e ./xgbserver
ENTRYPOINT ["python", "-m", "xgbserver"]

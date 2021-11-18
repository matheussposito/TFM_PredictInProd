FROM python:3.7-bullseye

COPY model.joblib /model.joblib
COPY TaxiFareModel /TaxiFareModel
COPY predict.py /predict.py
COPY api /api
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0

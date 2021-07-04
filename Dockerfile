FROM python:3.8-slim-buster
WORKDIR /app
COPY /src/requirements.txt /app
RUN python -m pip install -r requirements.txt
COPY /src/ /app/
CMD ["gunicorn", "--workers=2", "--bind", "0.0.0.0:5000", "app:app"]

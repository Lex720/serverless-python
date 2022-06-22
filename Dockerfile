FROM python:3.7-slim

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN pip install pip pipenv fastapi uvicorn --upgrade
RUN pipenv install --skip-lock --system --dev

CMD exec uvicorn main:app --host 0.0.0.0 --port $PORT
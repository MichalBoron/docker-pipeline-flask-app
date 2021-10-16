FROM alpine

RUN apk add --no-cache uwsgi uwsgi-python3 cmd:pip3 \
      && pip3 install --upgrade pip \
      && pip3 install flask

ENV APP_DIR /app
ENV FLASK_APP app.py
ENV FLASK_ENV=development

RUN mkdir ${APP_DIR}
WORKDIR ${APP_DIR}

COPY app.py .

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0"]

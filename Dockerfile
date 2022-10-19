FROM python:3
COPY . /app
WORKDIR /app
RUN ls
RUN pip install -r requirement.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
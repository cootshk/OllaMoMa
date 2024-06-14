FROM python:3.11.9-bookworm

WORKDIR /app

ADD . /app

RUN pip3 install --no-cache-dir -r requirements.txt

run rm -rf /app/backend/db.sqlite3

EXPOSE 8000

CMD ["python3", "backend/manage.py", "runserver"]
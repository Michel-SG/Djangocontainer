FROM python:3.11-slim 
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ADD . .
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /app/dockerdjango
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
#CMD ["gunicorn","dockerdjango.dockerdjango.wsgi:application","--workers","1","-b","0.0.0.0:8000"]
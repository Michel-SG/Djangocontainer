FROM python:3.11-slim 
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
COPY requirements.txt .
ADD ./dockerdjango .
RUN pip install --no-cache-dir -r requirements.txt
#CMD ["python","manage.py","runserver","0.0.0.0:8000"]
CMD ["gunicorn","dockerdjango.wsgi:application","--workers","1","-b","0.0.0.0:8000"]
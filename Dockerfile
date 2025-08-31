# Use a more compatible Python version
FROM python:3.11-slim

WORKDIR /app

# setuptools is still good practice to have
RUN pip install setuptools

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]



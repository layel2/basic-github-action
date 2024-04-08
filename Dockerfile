FROM python:3.11-slim
ADD ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD ./src/ /app/
EXPOSE 8000

CMD ["uvicorn", "main:app", "--port", "8000", "--reload"]
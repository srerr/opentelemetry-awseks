FROM python:3.10
WORKDIR /job
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "sh"]
CMD ["/entrypoint.sh"]
EXPOSE 8000 

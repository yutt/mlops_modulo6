FROM python:3.9-slim as training

WORKDIR /tmp
#Por algun motivo el curl me falla al resolver direcciones en este punto, asi que he utilizado el ADD
ADD https://raw.githubusercontent.com/blopezpi/mlops-course/main/final_exercise/requirements.txt .
RUN cat requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
ADD https://raw.githubusercontent.com/blopezpi/mlops-course/main/final_exercise/training.py .
RUN python training.py


FROM python:3.9-slim as runner

WORKDIR /tmp
COPY ./modelserver .
COPY --from=training /tmp/model  .
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry add uvicorn
RUN poetry install
EXPOSE 8080
CMD ["uvicorn", "modelserver.api:app", "--port", "8080" , "--host", "0.0.0.0"]

#RUN cp -R ./model ./modelserver/modelserver


#RUN poetry build 

#FROM python:3.9-slim as runner
#WORKDIR /tmp
#COPY  --from=training /tmp/modelserver/dist .
#RUN pip install uvicorn 
#uvicorn --factory example:create_app




# Proyecto del modulo 6

## Nivel 1:

* El entrenamiento y los requisitos del modelo se encuentran en este repositorio: https://github.com/blopezpi/mlops-course/tree/main/final_exercise:

 * requirements.txt → Las dependencias para entrenar el modelo.

 * training.py → El entrenamiento del modelo (se guarda con joblib, para cargar el modelo podeis usar joblib también https://note-code.blogspot.com/2019/01/guardar-un-modelo-con-sklearn.html).

 * El entrenamiento se basa en el dataset de Iris.

* Generar una sencilla API en FastAPI (sencilla) con un endpoint “/predict” que cargue el modelo y que haga predicciones con respecto que le llega.

* Gestionar las dependencias con Poetry.

* Construir una imagen de Docker con la API (acordaros de instalar lo minimo imprescindible).

* Subir la imagen a Dockerhub. (Pasadme vuestro usuario de dockerhub para validarlo).
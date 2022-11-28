from fastapi import FastAPI
import joblib


app = FastAPI()

    
@app.get("/predict")
async def predict(largo_sepalo:float, ancho_sepalo:float, largo_petalo:float,ancho_petalo:float):
    X = [[largo_sepalo, ancho_sepalo, largo_petalo,ancho_petalo]]
    eje = joblib.load('iris_classifier.joblib')
    b=eje.predict(X)
    text_result= ["setosa", "versicolor", "virginica"] 
    return {"result":str(b[0]), "text":text_result[b[0]]}

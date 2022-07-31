#Importacion de librerias respectivas
from unicodedata import category
from pymongo import MongoClient 
import time 
from bson.objectid import ObjectId

#Establecer conexión hacia la base de datos
dbUrl = MongoClient('mongodb://gbheredia22:1234gbz@localhost:27017/?authMechanism=DEFAULT') 

#Definir cantidad de datos a insertar
n_registros = 500000

#Crear la base de datos
db = dbUrl['School'] 

#Crear colección CourseInstructor
coleccion = db['CourseInstructor'] 

#Establecer contador 
start = time.perf_counter()

for contador in range(1, n_registros):
    coleccion.insert_one({"CourseID": "courseID" + str(contador), "PersonID":"personID"+str(contador)})

#Finalizar contador
end = time.perf_counter()

#Mostrar el tiempo transcurrido al realizar la inserción
print(f"Tiempo de ejecución {end - start}") 


#Crear colección Persona
coleccion = db['Person'] 

#Establecer contador
start = time.perf_counter()

for contador in range(1, n_registros):
    coleccion.insert_one({"PersonID": "personID" + str(contador), "LastName":"lastnameID"+str(contador), "FirstName":"firstnameID"+str(contador),
    "HireDate":"hireDate"+str(contador),"EnrollmentDate":"enrollmentDate"+str(contador),"Discriminator":"discriminator"+str(contador)})

#Finalizar contador
end = time.perf_counter()

#Mostrar el tiempo transcurrido al realizar la inserción
print(f"Tiempo de ejecución {end - start}") 


#Crear colecciónDepartment
coleccion = db['Department'] 

#Establecer contador
start = time.perf_counter()

for contador in range(1, n_registros):
    coleccion.insert_one({"DepartmentID": "departmentID" + str(contador), "Name":"name"+str(contador),"Budget":"budget"+str(contador),
    "StartDate":"startDate"+str(contador),"Administrator":"administrator"+str(contador)})

#Finalizar contador
end = time.perf_counter()

#Mostrar el tiempo transcurrido al realizar la inserción
print(f"Tiempo de ejecución {end - start}") 

#Crear colección Course
coleccion = db['Course'] 

#Establecer contador
start = time.perf_counter()

for contador in range(1, n_registros):
    coleccion.insert_one({"CourseID": "courseID" + str(contador), "Title":"title"+str(contador),"Credits":"credits"+str(contador),
     "DepartmentID":"departmentID"+str(contador)})

#Finalizar contador
end = time.perf_counter()

#Mostrar el tiempo transcurrido al realizar la insercióno
print(f"Tiempo de ejecución {end - start}") 
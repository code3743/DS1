## Proyecto 1: Análisis de datos

### Integrantes:

- *Pedro Bernal* - *2259548*
- *Esmeralda Rivas* - *2259580*
- *Jota López* - *2259394*

### Descripción del proyecto:

El objetivo es aplicar los conocimientos adquiridos en bases de datos transaccionales y analíticas, bodega de datos, ETL y análisis descriptivo.


**Data Set:**

La base de datos utilizada este proyecto es: [Customer Shopping Dataset](https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset/data?select=customer_shopping_data.csv)

Este dataset contiene información sobre compras de clientes en una tienda minorista, incluyendo productos, categorías, precios, cantidad comprada y métodos de pago.

### Lanzar base de datos:

Para lanzar la base de datos, se debe ejecutar el archivo `docker-compose.yml` que se encuentra en la raiz del proyect. Para ello, se debe ejecutar el siguiente comando en la terminal:

```bash
docker compose up -d
``` 

Esto iniciará el contenedor de pgAdmin y PostgreSQL. Para acceder a la interfaz de pgAdmin, se debe abrir un navegador web y acceder a `http://localhost:5050`. Las credenciales de acceso son las siguientes:

- **Usuario:**
  - Correo: `admin@ds.com`
  - Contraseña: `admin`



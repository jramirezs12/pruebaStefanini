# pruebaStefanini

Hola! Esta es mi prueba para Stefanini y para Dale!

Para correr el proyecto de manera correcta, debemos tener instalado para el Front-End tanto Angular con su CLI, NodeJS, y para el Back-End esta corriendo bajo la ultima
version de .NET y de Net Core. La base de datos esta en SQL Server, prendemos el servidor local y para generarla lo hacemos desde la consola de Nuget con los siguientes comandos:

Add-Migration Initial
Update-database

Cuando corremos esto ya nos genera tanto la base de datos como sus respectivas tablas, instalamos todas las dependencias tanto para el back como para el front, el 
back tiene Swagger (al cual accedemos desde /swagger/index.html), por lo que podemos ver todos los endpoints de las apis y probar su correcto consumo desde ahi.

Verificar que el puerto del servidor backend sea https://localhost:44305/ ya que con este estan configurados los consumos desde el front hacia el back.

Para el front corremos un npm install, y luego un ng serve para levantar el servidor de front (importante que este corriendo el servidor del backend), si hicimos todo bien,
ya tendremos nuestra tienda corriendo desde la que podremos agregar, obtener y eliminar tanto productos como clientes y estos se veran reflejados en nuestra base de datos.

Tendremos modulos donde podremos ver todos nuestros clientes y productos, registrar los mismos, un carrito de compras desde el cual se registran los clientes y un boton que al darle
nos hara la operacion :)

Cualquier inquietud se pueden comunicar a mi correo

Gracias!

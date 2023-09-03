# Lenguajes de interfaz (ASM)
Este repositorio contiene los proyectos y ejercicios realizados en la materia de lenguajes de interfaz. Inpartida por [BanarySource](https://www.magicpattern.design/tools/css-backgrounds) en el Instituto Tecnológico de Ciudad Hidalgo.

Cada carpeta contiene un programa diferente que realiza una tarea específica. Los programas están escritos en lenguaje ensamblador y se pueden ejecutar en un sistema operativo Linux.
<p align="center">
<img src="https://img.shields.io/badge/-Ensamblador-008000?style=for-the-badge&logo=assembly&logoColor=white" alt="Ensamblador Icon" />
<img src="https://img.shields.io/badge/-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" alt="Linux Icon" />
</p>


## Instrucciones de uso
Para ejecutar cualquiera de los programas en este repositorio, se debe seguir los siguientes pasos:
1. Clonar el repositorio en su computadora local.
2. Abrir una terminal y navegar a la carpeta del programa que desea ejecutar.
3. En la terminal, escribir el siguiente comando para ensamblar el programa:

```bash
nasm -f elf64 -o programa.o programa.asm
```
Si el programa no se ensambla, es posible que falten las herramientas de ensamblaje. Para instalarlas, escribir el siguiente comando en la terminal:
```bash 
sudo apt-get install nasm
```


4. Escribir el siguiente comando para enlazar el programa:
```bash
ld -s -o programa programa.o
```

5. Finalmente, escribir el siguiente comando para ejecutar el programa:
```bash
./programa
```
## Configurando el entorno de desarrollo

1. *Instalar NASM **(Netwide Assembler)*** el cual es un ensamblador para arquitectura de x86 y uno de los ensambladores mas populares para Linux, para ellos ejecutar el siguiente comando en la Shell:

```bash
sudo apt install nasm
```

2. *Instalar **build-essential, build-essential*** básicamente es una paquetería que contiene todos lo componentes necesario para compilar software, contiene básicamente la colección del compilador GNU/g++ y algunas otras librerías necesarias para compilar software. Se instala con en siguiente comando:

```bash
sudo apt-get install build-essential
```


Hecho lo anterior ya se tiene todo listo para correr un programa el ensamblado.


## Wiki

La wiki del repositorio contiene información detallada sobre cada programa, incluyendo su descripción, los lenguajes de programación utilizados, las instrucciones de uso y los resultados esperados. También se proporcionan ejemplos de código y capturas de pantalla para ayudar en la comprensión de cada programa.

[Reportes/Documentación ](https://github.com/JoseCorreaMorales/lenguajes-de-interfaz/wiki) 
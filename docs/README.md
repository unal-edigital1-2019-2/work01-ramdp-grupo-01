﻿# ELECTRÓNICA DIGITAL 1 2019 -2 UNIVERSIDAD NACIONAL DE COLOMBIA 
## Integrantes
* Sebastian Ruiz Torres-1032504363
* Juan González
* Julián Pulido
## Elementos a usar durante el proyecto
* Tarjeta Nexys4
* AW=17
* DW=16
* Tamaño RAM= 2,097,152 bits =262144 Bytes
* Imagen 320*240 formato RGB
* Tamaño Imagen= 1,128,800 bits =141100 Bytes
* prueba de edición
## Semana01-proyecto

El presente documento consta de los avances de de la primera entrega del proyecto, correspondiente a la semana 1 y que consta de la resolución de 3 preguntas y la ejecución de un testbench.

## pregunta 1
Partiendo que se va a utilizar la FPGA Nexys 4 que cuenta con una memoria de  2,097,152 bits, que equivalen a unos 262144 Bytes y el tamaño de imagen máximo  de 640x480 píxeles otorgado por la cámara ocuparía ----- bits, corespondiente a -----bytes, y este excedería el espacio de la memoria, procedemos a utilizar un cuart del tamaño de imagen máximo, es decir 320x240 píxeles que ocuparía un total de 1,128,800 bits que en bytes es 141100 Bytes que corresponden a un 54% de la memoria de la Nexys, este tamaño de imagen en formato RGB556 es ideal para que e resto de la memoria se ocupe de las tareas de procesamiento de la imagen.

## pregunta 2
El formato que mejor se acopla para los intereses propuestos es RGB556 y el tamaño es de 320x240 píxeles, esto, con la finalidad de utilizar solo 
el 54%(aproximadamente de la memoria), esto permitiría utilizar un 48% de la memoria restante para poder realizar las diferentes tareas de procesamiento de la imagen.

## pregunta 3

* El registro COM[3]=1, activa escaldo.
* Para activar la barra de color se usan los registros COM17[7:6]=10, COM7[1]=1.
* Para el test de patrón: SCALING_XSC[7]=1 y SCALING_YSC[7]=0.
* EL registro COM12[7]=1 HREF siempre estará activo.
* Para habilitar el formato y el escalado de la cámara usaremos el registro COM7[2]=1, COM[0]=0 para la salida del formato RGB.
* Para el tamaño de la imagen completa usaremos el registro COM4[5:4]=10 ya que el tamaño total será ¼ de la ventana generada por la cámara.
* El registro COM15 [5:4]=01 ya que el formato completo de la barra de colores a utilizar es RGB 565.



## Aquí se debe  documentar todo el proceso del proyecto acorde a cada paquete de trabajo 
Tarjeta Nexys4
AW=17
DW=16
Tamaño RAM= 2,097,152 bits =262144 Bytes
Imagen 320*240 formato RGB
Tamaño Imagen= 1,128,800 bits =141100 Bytes
prueba de edición
## Semana01-proyecto

El presente documento consta de los avances de de la primera entrega del proyecto, correspondiente a la semana 1 y que consta de la resolución de 3 preguntas y la ejecución de un testbench.

## pregunta 1
Partiendo que se va a utilizar la FPGA Nexys 4 que cuenta con una memoria de  2,097,152 bits, que equivalen a unos 262144 Bytes y el tamaño de imagen máximo  de 640x480 píxeles otorgado por la cámara ocuparía ----- bits, corespondiente a -----bytes, y este excedería el espacio de la memoria, procedemos a utilizar un cuart del tamaño de imagen máximo, es decir 320x240 píxeles que ocuparía un total de 1,128,800 bits que en bytes es 141100 Bytes que corresponden a un 54% de la memoria de la Nexys, este tamaño de imagen en formato RGB556 es ideal para que e resto de la memoria se ocupe de las tareas de procesamiento de la imagen.


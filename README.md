Módulo UART (BITRATE, Tx y Rx)

El propósito de los módulos diseñados es implementar un sistema de comunicación serial basado en UART (Universal Asynchronous Receiver-Transmitter), proporcionando las funcionalidades esenciales para la transmisión y recepción de datos entre dispositivos digitales.

BITRATE: Ajusta la frecuencia de reloj utilizada por los módulos de transmisión y recepción, permitiendo operar a diversas velocidades de baudios configurables según las necesidades del sistema.

Tx: Facilita la conversión de datos paralelos en formato serial, asegurando que se envíen en el formato estándar UART (inicio, datos, paridad y detención), lo que permite la comunicación hacia otros dispositivos.

Rx: Desempaqueta datos seriales recibidos, convirtiéndolos en formato paralelo y validando la integridad del mensaje (por ejemplo, usando paridad si está configurada), permitiendo su uso en el sistema receptor.

En conjunto, estos módulos son esenciales para establecer una comunicación eficiente, confiable y configurable entre dispositivos digitales, siendo especialmente útiles en aplicaciones como microcontroladores, sistemas embebidos, sensores y actuadores, entre otros.
![image](https://github.com/user-attachments/assets/efbfd839-630d-4d83-a922-f8c4e55e0304)

Módulo BITRATE
El módulo BITRATE se encarga de generar una señal de reloj ajustada a diferentes velocidades de transmisión (baudios) para un sistema UART. Permite al usuario seleccionar entre varias configuraciones de velocidad: 300, 600, 1200, 1800, 2400, 4800, 9600, 19200, 38400, 57600 y 115200 baudios.

Funcionamiento
El módulo utiliza un reloj de entrada (clk) y, a partir de este, genera una señal de reloj modificada (uart_clock) en función de la velocidad configurada mediante el parámetro bitrate. Se basa en un contador que incrementa hasta un valor límite (counter_final) definido para cada velocidad de baudios. Una vez alcanzado este límite, el contador se reinicia y la señal de salida (uart_clock) cambia de estado. Además, el sistema puede ser habilitado o reiniciado mediante las señales EN y RST.

Este diseño asegura una sincronización precisa entre la velocidad de transmisión seleccionada y la señal de salida del módulo, contribuyendo a un funcionamiento confiable del sistema de comunicación UART, en la siguiente imagen se puede observar el comportamiento de las señales a lo largo del tiempo 

![image](https://github.com/user-attachments/assets/457bb159-1ec6-4f0a-9818-0647da308414)


Módulo Tx
El módulo Tx implementa la transmisión de datos en un sistema UART (Universal Asynchronous Receiver-Transmitter). Se encarga de convertir los datos paralelos en una secuencia de bits seriales que incluye bits de inicio, datos, paridad y detención según la configuración del usuario.

Funcionamiento
El módulo opera como una máquina de estados finitos (FSM), con estados que gestionan las diferentes etapas de la transmisión: reposo (IDLE), bit de inicio (START), bits de datos (de BIT_0 a BIT_7), bit de paridad (PARITY, si está habilitado) y bit de detención (STOP).

Entrada de datos: Recibe un byte de datos (DATA_IN_Tx) para transmitir, junto con configuraciones como el número de bits de datos (UART_BITS) y el tipo de paridad (UART_PARITY).
Máquina de estados: Controla la transición entre etapas según el estado actual, la configuración y las señales de control (UART_WRITE).
Salida serial: Genera la señal de datos seriales (DATA_OUT_Tx) que incluye el formato estándar UART (inicio, datos, paridad y detención).
Interrupción: Activa la señal de interrupción (IRQ_Tx) al finalizar la transmisión, le indica al procesador que el módulo está listo para un nuevo dato.
Además, el diseño incluye un registro de datos (myreg) para almacenar los datos de entrada temporalmente y garantizar una transmisión sincronizada con el reloj del sistema (uart_clok). Este módulo es fundamental para la transmisión serial en aplicaciones UART, garantizando flexibilidad y compatibilidad con diferentes configuraciones de comunicación.

![image](https://github.com/user-attachments/assets/47bacd62-b969-4d18-8c0d-155fa76757d0)


Se puede observar como el módulo recibe un dato de 8 bits y este lo envía bit a bit en una secuencia(señal morada), la cual está sincronizada por el BITRATE

Módulo Rx:
El módulo Rx implementa la recepción de datos en un sistema UART (Universal Asynchronous Receiver-Transmitter). Es responsable de convertir una secuencia serial de bits recibidos (DATA_IN_Rx) en datos paralelos (rdata), con manejo de bits de inicio, datos, paridad y detención, según la la secuencia de datos que ingresa al sistema.

Funcionamiento:
El módulo opera mediante una máquina de estados finitos (FSM) para gestionar las diferentes etapas del proceso de recepción, el cambio entre estados depende de la frecuencia de el modulo BITRATE, a pesar que el módulo de RX funciona es con el reloj del procesador Riscv:

Detección de inicio: Detecta el bit de inicio en la señal serial recibida (DATA_IN_Rx) y prepara el sistema para iniciar la recepción.
Recepción de bits de datos: Extrae los bits de datos individuales desde DATA_IN_Rx y los almacena en un registro temporal (DATA_OUT_Rx), que posteriormente se pasa al registro de salida (rdata).
Paridad (opcional): Si está habilitada, válida la paridad del mensaje recibido (par, impar o sin paridad).
Bit de detención: Comprueba la finalización de la recepción con el bit de detención antes de reiniciar el sistema.
Además, incluye las siguientes funcionalidades:

Reinicio del generador de baudios: Emite una señal (rst_bitrate) para sincronizar la frecuencia de muestreo con la señal serial entrante.
Señalización de interrupciones: Activa la señal IRQ_Rx y UART_AVAIL al completar exitosamente la recepción, indicando que los datos están disponibles para su lectura.
El módulo se sincroniza con el reloj de la CPU (clk) para garantizar una correcta interpretación de la señal serial. Este diseño es fundamental para aplicaciones UART que requieren una recepción confiable y eficiente de datos seriales.

![image](https://github.com/user-attachments/assets/887eaf4d-a83f-4566-b3e5-61f330df1a9c)



En esta simulación se puede observar cómo al ingresar unos datos de bits se van guardando temporalmente (señal morada) para al momento de obtener toda la secuencia enviarla a un registro, este con la velocidad generada por el BITRATE.

Módulo UART

El módulo UART integra y coordina los submódulos BITRATE, Tx, y Rx para implementar un sistema completo de comunicación serial basado en UART. Su propósito principal es proporcionar una interfaz universal para la transmisión y recepción de datos seriales, adaptable a diversas configuraciones de velocidad de baudios, formato de datos y tipo de paridad.

Faltantes: Para completar el módulo UART en sus totalidad faltaria la integración del mux de la direcciones, el cual es el encargado de seleccionar qué módulo se va a configurar de acuerdo a la información que llega desde el procesador, también falta integrar la conexión con el procesador. En el módulo RX falto el envío de la señal de reset al módulo BITRATE al momento de recibir el bit de start. Por último falta incluir los registros de cada módulo tanto de entrada como de salida. 

Este módulo UART se simuló y se obtuvo la siguiente imagen:

![image](https://github.com/user-attachments/assets/c9773f11-b68d-496e-b999-61fdad004d29)

Se pueden observar las señales más importantes de todo el módulo y como es su comportamiento a lo largo del tiempo, importante destacar en es simulación es que se puede observar como a la misma vez se trasmiten y reciben datos 

A continuación  se observa el layout del módulo UART.

![image](https://github.com/user-attachments/assets/9c9f12d5-6e6e-4616-9e7f-764a28336688)


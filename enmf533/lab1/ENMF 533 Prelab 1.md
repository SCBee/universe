1. What programming language is used by Arduino?  

- C/C++.
- The Arduino's memory limitations make it more practical to develop using C, but the Arduino is able to use C++ specific language features like classes.



2. Explain the purpose of the void setup() command.  

- Initialise the states on the various Arduino features like pins and serial communication.
- The setup function is executed once per Arduino reset and at the beginning.



3. Explain the purpose of the void loop() command.

- Execute logic that we want to perform continuously throughout the Arduino's operation.



4. What symbol is used to compare two values (and returns TRUE if they are equal)?

- The equality operator is `==`, which will return true if both operands are equal.



5. What are the two types of input and output pins on an Arduino board?  

- Digital and Analog.



6. What are two ways that you can add a library to the Arduino IDE?

- Library Manager through "Manage Libraries" menu option.
- Download library as a zip file and "Add .ZIP library" menu option.



7. List the 9 data types that can be defined in an Arduino program.

- boolean
- char
- byte
- int
- unsigned int
- long
- unsigned long
- float
- double



8. Explain the operation of the DigitalWrite command.

- Takes two arguments: (pin, value)
- pin is the number associated with the pin we want to manage
- value is the state of the pin, and can have a value of HIGH or LOW.
	- the effect of the value depends on if the pin we are managing is an INPUT or OUTPUT pin.

- pin is OUTPUT:
	- the function changes the voltage state with the corresponding pin number.
	- HIGH means the pin will have a voltage of 5V or 3.3V.
	- LOW means the pin will have a voltage of 0V.

- pin is INPUT:
	- the function changes the corresponding pin's internal pull-up resistor.
	- HIGH means the pullup is enabled.
	- LOW means the pullup is disabled.

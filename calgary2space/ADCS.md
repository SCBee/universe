The ADCS firmware won't run on the stm32 and our freertos/fprime system, so we need to make the interface to communicate with the ADCS.

- Saksham and Zach will be working on the ADCS interface running on the on-board STM32 chip.

- Tasks
	- Create a STM32 module that will be able to communicate with the ADCS module using UART
	- The interface will need to be able to receive and transmit signals from/to the ADCS hardware

ADCS is the module to control the orientation of the satellite. It helps with getting the satellite at its desired orbit and making sure it stays at the desired orbit.

The interface should allow developers to send commands and receive data to and from the ADCS unit.

Work on general message interface. The exact message formats haven't been decided yet, and will be determined later on.
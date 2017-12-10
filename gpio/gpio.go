// gpio is the speciic package that stores the functions called by Prometheus to run the bed vibrator (via go-rpio package)
package gpio

import (
	"fmt"
)

//Sends the signal to turn on the bed vibrator by sending a High (true) signal to GPIO 17
func VibOn() {
	fmt.Println("Vibration On")
}

//Sends the signal to turn off the bed vibrator by sending a Low (false) signal to GPIO 17
func VibOff() {
	fmt.Println("Vibration Off")
}

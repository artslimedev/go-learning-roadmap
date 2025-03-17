// 📌 Exercise: Use Goroutines
// 🔹 Instructions: Modify this program to run 'printMessage' in a separate goroutine.
package main
import (
    "fmt"
    "time"
)
func printMessage() {
    fmt.Println("Hello from Goroutine!")
}
func main() {
    printMessage()
    time.Sleep(time.Second)
}

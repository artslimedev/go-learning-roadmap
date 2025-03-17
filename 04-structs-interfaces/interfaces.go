// 📌 Exercise: Implement an Interface
// 🔹 Instructions: Implement an interface for a 'Vehicle' with a 'Drive()' method.
package main
import "fmt"
type Animal interface {
    Speak() string
}
type Dog struct {}
func (d Dog) Speak() string {
    return "Woof!"
}
func main() {
    d := Dog{}
    fmt.Println(d.Speak())
}

// 📌 Exercise: Create a Struct
// 🔹 Instructions: Modify this program to add an 'age' field to the struct.
package main
import "fmt"
type Person struct {
    Name string
}
func main() {
    p := Person{Name: "Alice"}
    fmt.Println(p)
}

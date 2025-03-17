// 📌 Exercise: Build a REST API
// 🔹 Instructions: Modify this to add a route that returns a list of recipes.
package main
import (
    "fmt"
    "net/http"
)
func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintln(w, "Hello API")
}
func main() {
    http.HandleFunc("/", handler)
    http.ListenAndServe(":8080", nil)
}

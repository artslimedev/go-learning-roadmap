#!/bin/bash

# Define base directory
BASE_DIR="go-learning-roadmap"

# Create directory structure
mkdir -p $BASE_DIR/{01-setup-basics,02-variables-functions,03-control-structures,04-structs-interfaces,05-concurrency,06-databases,07-final-project}

# Function to write Go files with instructions
write_go_file() {
    echo -e "$2" > "$BASE_DIR/$1/$3.go"
}

# 🟢 01-Setup & Basics
write_go_file "01-setup-basics" "// 📌 Exercise: Install & Run Go Program\n// 🔹 Instructions: Modify this file to print 'Hello, [Your Name]!' instead.\npackage main\nimport \"fmt\"\nfunc main() {\n    fmt.Println(\"Hello, World!\")\n}" "hello_world"

write_go_file "01-setup-basics" "// 📌 Exercise: Understanding Packages\n// 🔹 Instructions: Modify this script to import and use the 'math' package.\npackage main\nimport \"fmt\"\nfunc main() {\n    fmt.Println(\"Go Packages\")\n}" "packages"

# 🟢 02-Variables & Functions
write_go_file "02-variables-functions" "// 📌 Exercise: Declare Variables\n// 🔹 Instructions: Declare an integer variable called 'age' and print its value.\npackage main\nimport \"fmt\"\nfunc main() {\n    var name string = \"Alice\"\n    fmt.Println(\"Name:\", name)\n}" "variables"

write_go_file "02-variables-functions" "// 📌 Exercise: Write a Function\n// 🔹 Instructions: Modify this function to return the square of a number.\npackage main\nimport \"fmt\"\nfunc greet(name string) string {\n    return \"Hello, \" + name\n}\nfunc main() {\n    fmt.Println(greet(\"Alice\"))\n}" "functions"

# 🟢 03-Control Structures
write_go_file "03-control-structures" "// 📌 Exercise: If-Else Condition\n// 🔹 Instructions: Modify this program to check if a number is even or odd.\npackage main\nimport \"fmt\"\nfunc main() {\n    num := 10\n    if num > 5 {\n        fmt.Println(\"Greater than 5\")\n    }\n}" "if_else"

write_go_file "03-control-structures" "// 📌 Exercise: Looping\n// 🔹 Instructions: Modify this loop to print numbers from 1 to 10.\npackage main\nimport \"fmt\"\nfunc main() {\n    for i := 0; i < 5; i++ {\n        fmt.Println(i)\n    }\n}" "loops"

# 🟢 04-Structs & Interfaces
write_go_file "04-structs-interfaces" "// 📌 Exercise: Create a Struct\n// 🔹 Instructions: Modify this program to add an 'age' field to the struct.\npackage main\nimport \"fmt\"\ntype Person struct {\n    Name string\n}\nfunc main() {\n    p := Person{Name: \"Alice\"}\n    fmt.Println(p)\n}" "structs"

write_go_file "04-structs-interfaces" "// 📌 Exercise: Implement an Interface\n// 🔹 Instructions: Implement an interface for a 'Vehicle' with a 'Drive()' method.\npackage main\nimport \"fmt\"\ntype Animal interface {\n    Speak() string\n}\ntype Dog struct {}\nfunc (d Dog) Speak() string {\n    return \"Woof!\"\n}\nfunc main() {\n    d := Dog{}\n    fmt.Println(d.Speak())\n}" "interfaces"

# 🟢 05-Concurrency
write_go_file "05-concurrency" "// 📌 Exercise: Use Goroutines\n// 🔹 Instructions: Modify this program to run 'printMessage' in a separate goroutine.\npackage main\nimport (\n    \"fmt\"\n    \"time\"\n)\nfunc printMessage() {\n    fmt.Println(\"Hello from Goroutine!\")\n}\nfunc main() {\n    printMessage()\n    time.Sleep(time.Second)\n}" "goroutines"

write_go_file "05-concurrency" "// 📌 Exercise: Use Channels\n// 🔹 Instructions: Modify this program to send and receive a message using a channel.\npackage main\nimport \"fmt\"\nfunc main() {\n    ch := make(chan string)\n    fmt.Println(\"Channels in Go\")\n}" "channels"

# 🟢 06-Databases
write_go_file "06-databases" "// 📌 Exercise: Connect to PostgreSQL\n// 🔹 Instructions: Modify this to fetch user data from a PostgreSQL database.\npackage main\nimport (\n    \"fmt\"\n    _ \"github.com/lib/pq\"\n)\nfunc main() {\n    fmt.Println(\"Database Connection Example\")\n}" "postgres_connection"

write_go_file "06-databases" "// 📌 Exercise: Execute a Query\n// 🔹 Instructions: Modify this to execute an 'INSERT' query.\npackage main\nimport (\n    \"fmt\"\n)\nfunc main() {\n    fmt.Println(\"Executing SQL Query\")\n}" "execute_query"

# 🟢 07-Final Project
write_go_file "07-final-project" "// 📌 Exercise: Build a REST API\n// 🔹 Instructions: Modify this to add a route that returns a list of recipes.\npackage main\nimport (\n    \"fmt\"\n    \"net/http\"\n)\nfunc handler(w http.ResponseWriter, r *http.Request) {\n    fmt.Fprintln(w, \"Hello API\")\n}\nfunc main() {\n    http.HandleFunc(\"/\", handler)\n    http.ListenAndServe(\":8080\", nil)\n}" "rest_api"

write_go_file "07-final-project" "// 📌 Exercise: Add Authentication\n// 🔹 Instructions: Modify this API to include basic authentication for the '/recipes' endpoint.\npackage main\nimport (\n    \"fmt\"\n)\nfunc main() {\n    fmt.Println(\"Authentication in Go API\")\n}" "authentication"

echo "✅ Go learning roadmap has been set up! Navigate to '$BASE_DIR' and start practicing."

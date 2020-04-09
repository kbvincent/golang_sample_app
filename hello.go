package main

import (
	"io"
	"net/http"
)

func hello(server http.ResponseWriter, r *http.Request) {
	io.WriteString(server, "Hello world! This is Kris Vincent's Site")
}

func main() {
	http.HandleFunc("/", hello)
	http.ListenAndServe(":8080", nil)
}

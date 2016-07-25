package main

import (
	"fmt"
	"log"
	"net/http"
)

func fib(n int) int {
	if n < 2 {
		return n
	} else {
		return fib(n-1) + fib(n-2)
	}
}

func fibonacci(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "%d\n", fib(25))
}

func main() {
	http.HandleFunc("/", fibonacci)
	log.Fatal(http.ListenAndServe("localhost:8200", nil))
}

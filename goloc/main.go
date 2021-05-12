package main

import (
	"bytes"
	"fmt"
	"io/ioutil"
	"os"
	"os/exec"
)

func main() {
	fileLoc := "/tmp/locsave"
	if len(os.Args) == 1 {
		fmt.Println("No action provided")
		os.Exit(1)
	}
	args := os.Args[1]
	var output bytes.Buffer
	switch args {
	case "save":
		cmd := exec.Command("pwd")
		cmd.Stdout = &output
		cmd.Run()
		fmt.Printf("%v", output.String())
		f, err := os.Create(fileLoc)
		if err != nil {
			fmt.Println(err.Error)
			return
		}
		defer f.Close()
		_, err = f.WriteString(output.String())
		if err != nil {
			fmt.Println(err.Error)
			return
		}
	case "load":
		data, err := ioutil.ReadFile(fileLoc)
		if err != nil {
			fmt.Println(err.Error)
			return
		}
		text := string(data)
		fmt.Print(text)
		exec.Command("cd", text).Run()
	}
}

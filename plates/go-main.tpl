{{define "main.go"}}
package main

import "fmt"

func main() {
	fmt.Printf("Hello World\n")
}
{{end}}

{{define "main_test.go"}}
package main

import "testing"

func TestMyFunc(t *testing.T) {

}
{{end}}

{{define "Makefile"}}
GO_CMD=go
GOLINT_CMD=golint
GO_TEST=$(GO_CMD) test -v ./...
GO_VET=$(GO_CMD) vet ./...
GO_LINT=$(GOLINT_CMD) .

all:
	$(GO_VET)
	$(GO_LINT)
	$(GO_TEST)
{{end}}

{{define ".gitignore"}}
tmp
# Compiled Object files, Static and Dynamic libs (Shared Objects)
*.o
*.a
*.so

# Folders
_obj
_test

# Architecture specific extensions/prefixes
*.[568vq]
[568vq].out

*.cgo1.go
*.cgo2.c
_cgo_defun.c
_cgo_gotypes.go
_cgo_export.*

_testmain.go

*.exe
*.test
*.prof
{{end}}

{{define "README.md"}}
{{ask "Project Name"}}
=====

{{end}}

{{define "LICENSE"}}
The MIT License (MIT)

Copyright (c) 2014 Andrea Franz (http://gravityblast.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

{{end}}

#!/bin/sh
cd go
(hg pull && hg update -r tip) || exit 1
cd src
./make.bash || exit 1
cd ../..
echo "Installing go tool cover ..."
go get -u code.google.com/p/go.tools/cmd/cover
echo "Installing godoc ..."
go get -u code.google.com/p/go.tools/cmd/godoc
echo "Installing goimports ..."
go get -u code.google.com/p/go.tools/cmd/goimports
echo "Installing go tool vet ..."
go get -u code.google.com/p/go.tools/cmd/vet
echo "Installing golint ..."
go get -u github.com/golang/lint/golint
echo "Installing nsf/gocode ..."
go get -u github.com/nsf/gocode
echo "Installing go oracle ..."
go get -u code.google.com/p/go.tools/cmd/oracle
echo Done

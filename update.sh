#!/bin/sh

# install or update Go repository
if [ -d "go" ]; then
	cd go
	(hg pull && hg update -r tip) || exit 1
else
	hg clone -r tip https://code.google.com/p/go go || exit 1
	cd go
fi

# make Go
cd src
./make.bash || exit 1
cd ../..

# get and update packages
echo "Getting extra go package repositories: go.net, go.tools, go.crypto, go.image, go.text, go.exp ..."
go get -u code.google.com/p/go.net
go get -u code.google.com/p/go.tools
go get -u code.google.com/p/go.crypto
go get -u code.google.com/p/go.image
go get -u code.google.com/p/go.text
go get -u code.google.com/p/go.exp
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

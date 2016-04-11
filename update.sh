#!/bin/sh

# go tools
echo Installing go tools ...
go get -u golang.org/x/tools/cmd/...

# go lint
echo Installing golint ...
go get -u github.com/golang/lint/golint

# errcheck
echo Installing errcheck ...
go get -u github.com/kisielk/errcheck

# nsf gocode
echo Installing gocode ...
go get -u github.com/nsf/gocode

# GB and standard plugins
echo Installing gb and plugins ...
go get -u github.com/constabulary/gb/...

# go-fuzz
echo Installing go-fuzz ...
go get -u github.com/dvyukov/go-fuzz/go-fuzz
go get -u github.com/dvyukov/go-fuzz/go-fuzz-build

# gotags
echo Installing gotags ...
go get -u github.com/jstemmer/gotags

# godef
echo Installing godef ...
go get -u github.com/rogpeppe/godef

# unconvert
echo Installing unconvert ...
go get -u github.com/mdempsky/unconvert

# unused
echo Installing go-unused ...
go get -u honnef.co/go/unused

# gocyclo
echo Installing gocyclo ...
go get -u https://github.com/fzipp/gocyclo

# check
echo Installing check ...
go get -u https://github.com/opennota/check

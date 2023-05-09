VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux

format: ; gofmt -s -w ./

lint: ; golint

test: ; go test -v

build: format ; CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=arm64 go build -v -o kbot -ldflags "-X="github.com/telezhenkopv/kbot/cmd.appVersion=${VERSION}

clean: ; rm -rf kbot
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux

linux: lint test build clean

format: ; gofmt -s -w ./

lint: ; golangci-lint run

test: ; go test -v

build: format ; CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=arm64 go build -v -o kbot -ldflags "-X="github.com/telezhenkopv/kbot/cmd.appVersion=${VERSION}

clean: ; rm -rf kbot
.PHONY: build

build:
	@go build -o main qrcode/main.go


example:
	./main "homepage: https://github.com/skip2/go-qrcode" > assert/homepage.png
	./main -d "homepage: https://github.com/skip2/go-qrcode" > assert/homepage1.png
	./main -d -i -o assert/homepage2.png "homepage: https://github.com/skip2/go-qrcode"
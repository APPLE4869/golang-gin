FROM golang:1.13.0-alpine

# Set workdir
WORKDIR /go/src/app/
COPY . ./

ENV GO111MODULE=on

# Update packages && install necessary ones.
RUN apk update && apk add --no-cache git

# Install packages related to Golang.
RUN GO111MODULE=off go get github.com/codegangsta/gin

# Run Gin.
CMD ["gin", "-i", "run"]

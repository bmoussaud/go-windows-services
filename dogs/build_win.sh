rm dog.exe
export XL_VALUE_version=$1


#env GOOS=windows GOARCH=386 go get -u github.com/kardianos/service
#env GOOS=windows GOARCH=386 go get -u github.com/magiconair/properties

env GOOS=windows GOARCH=386  go build -o dog.exe -v main.go
xl apply -s --proceed-when-dirty -f xebialabs.yaml
../xld.sh Applications/.NET/services/dogs/$XL_VALUE_version  Environments/MicroPet/Dev/micropet.dev

FROM golang:1.20

RUN apt-get update && apt-get -y upgrade && apt-get -y install git

RUN git clone https://github.com/ahmetb/gen-crd-api-reference-docs

WORKDIR gen-crd-api-reference-docs

RUN go build

VOLUME /go/gen-crd-api-reference-docs/apidocs

ENTRYPOINT ["./gen-crd-api-reference-docs"]
CMD ["-config", "./example-config.json", "-api-dir", "github.com/kubeflow/kfserving/pkg/apis/serving/v1alpha2", "-out-file", "./apidocs/README.md"]

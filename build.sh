# ./build.sh {version}
if [ -z "$1" ]
  then 
    echo "ERROR: Must provide version in format #.#.#"
    exit 1;
fi
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o golang_sample_app .
docker build -t gcr.io/kvincent-gcs-gce-challenge-lab/golang_sample_app:$1 .
docker push gcr.io/kvincent-gcs-gce-challenge-lab/golang_sample_app:$1
rm golang_sample_app
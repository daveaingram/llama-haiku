model=HuggingFaceH4/zephyr-7b-beta
volume=$PWD/data  # share a volume with the container as a weight cache

docker run --gpus all --shm-size 1g -p 8080:80 -v $volume:/data \
    ghcr.io/predibase/lorax:latest --model-id $model

#!/bin/bash

set -euox pipefail

docker build -t vapurrmaid/coder:basic .
docker push vapurrmaid/coder:basic

#!/bin/bash

set -euox pipefail

docker build -t vapurrmaid/coder:emacs .
docker push vapurrmaid/coder:emacs

# ami-debian-cuda
Debian-based AMI (`debian-penseur`) for Machine Learning

This will grab the latest PIMCO 'debian-docker' AMI off the shelf, install the NVIDIA CUDA drivers, kubeflow and ksonnet then pack it up as a private, reusable AMI.

Start here if you only need ML AMIs.


## Usage

Pull the code

`git clone git@github.com:todd-dsm/ami-debian-cuda.git`

Modify `debian-ml-cuda.json` and test it:

`packer validate debian-ml-cuda.json`

`packer inspect debian-ml-cuda.json`


If that all goes well, run the build:

`packer build debian-ml-cuda.json 2>&1 | tee /tmp/packer-build.out`

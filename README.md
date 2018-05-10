# ami-debian-cuda

CURRENT STATUS: This build is failing. After adding the repo with the runfile(local) method:
```bash
sudo apt-get install -y cuda
Reading package lists... Done
Building dependency tree
Reading state information... Done
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 cuda : Depends: cuda-9-1 (>= 9.1.85) but it is not going to be installed
E: Unable to correct problems, you have held broken packages.
```

There's no way around this given the current timeframe. Abandoning for Ubuntu; will re-address later.

---
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

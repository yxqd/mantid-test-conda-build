# install mc2
wget --no-verbose http://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O miniconda.sh
CONDA_PREFIX=$HOME/jenkins-systemtests-opt/miniconda2
bash miniconda.sh -b -p $CONDA_PREFIX
# configure
export PATH=$CONDA_PREFIX/bin:$PATH
conda config --add channels conda-forge
# install cmake
conda install --yes cmake
# clone mantid
git clone https://github.com/mantidproject/mantid.git


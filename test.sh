#!/usr/bin/env bash

# Example: PYTHON_VER=3.5 LABEL=test ./test.sh &

export PATH=$HOME/jenkins-systemtests-opt/miniconda2/bin:$PATH

cd mantid && \
    git clone https://github.com/mantidproject/conda-recipes && \
    cp conda-recipes/jenkins/test/* Testing/SystemTests/scripts && \
    cp conda-recipes/jenkins/test/install_conda_mantid_no_pkg_upload.sh Testing/SystemTests/scripts/install_conda_mantid.sh && \
    mkdir -p build && touch build/mantid-framework-fake.tar.bz2 && \
    echo "Running tests. Please monitor mantid/log.systemtests" && \
    WORKSPACE=$PWD ./buildconfig/Jenkins/systemtests >log.systemtests 2>&1 && \
    echo "Done"

# Run system tests of mantid conda package here

## Run

Make sure the mantid conda pkg to test is already available at the specific channel at anaconda.
```
$ PYTHON_VER=3.5 LABEL=test ./test.sh &
```

The test
* will download files to ~/MantidExternaldata
* will install mantid at ~/jenkins-systemtests-opt

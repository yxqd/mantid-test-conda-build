# Run system tests of mantid conda package here

## Run

Make sure the mantid conda pkg to test is already available at the specific channel at anaconda.
```
$ PYTHON_VER=3.5 LABEL=test ./test.sh &
```

The test
* will download files to ~/MantidExternaldata
* will install mantid at ~/jenkins-systemtests-opt


## Results

* 3.10.20170610.42

Summary:
```
FAILED:
SNAPRedux.SNAP_short
SNAPRedux.SNAP_short_detcal
VesuvioCommandsTest.FitSingleSpectrumNoBackgroundTest
VesuvioCommandsTest.SingleSpectrumBackground
VesuvioCorrectionsTest.TestGammaAndMsCorrectWithContainer
VesuvioCorrectionsTest.TestGammaAndMsCorrectWithContainerFixedScaling
VesuvioCorrectionsTest.TestGammaAndMsCorrectWorkspaceIndexOne
VesuvioCorrectionsTest.TestGammaAndMsCorrectWorkspaceIndexTwo
VesuvioCorrectionsTest.TestMsCorrectWithContainer

97% tests passed, 9 tests failed out of 367 (22 skipped)
```
More details in log file.

Weird. systemtests passed at jenkins but 9 tests failed here.

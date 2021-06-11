# CIFilterTest
Repo for a sample project to demonstrate CISRGBToneCurveToLinear failing on large images

This project demonstrates an issue using the CIFilter CISRGBToneCurveToLinear where on large images it fails. There is no error. 

It has two images.
bmw.jpg does not work
bmw-small.jpg does work

Run the sample app on a device (bug is not reproducible in the simulator). The original image is on the left. The filtered image is on the right.

Open Radar: https://openradar.appspot.com/radar?id=4944500120092672

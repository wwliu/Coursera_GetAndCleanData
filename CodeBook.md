# Coursera, Getting and Cleaning Data, Assignment 1
#### File: CodeBook
#### Date: 24-05-2014
#### Version: 1.0
#### By: Wai-Wah Liu

This file describes the background of the data and gives a description of the variables of the final tidy data set. 

## Human Activity Recognition Using Smartphones Data Set 
The data sets are about the research study of: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy (see link). 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The idea behind this study is that activities such as walking, sitting, etc. can be predicted by the smartphone signals of the built-in accelerometer and gyroscope. The signals of these features are stored in the tidy data set. The variables included measure the mean or standard deviation on a specific signal. All these signal variables are standardized scores (with mean 0 and standard deviation 1). The variables are:

### subject
* Descr: **ID number of subject**
* Type: **numeric**
* Min: **1**
* Max: **30**

### label
* Descr: **Activity subject was performing**
* Type: **categorical**
  * 1: **walking**
  * 2: **walking upstairs**
  * 3: **walking downstairs**
  * 4: **sitting**
  * 5: **standing**
  * 6: **laying**

### type
* Descr: **Subject was part of test set or training set**
* Type: **categorical**
  * 1: **test**
  * 2: **training**

### t.body.acc.mean.x
* Descr: **the mean body signal of the accelerometer x-axis of the time domain**
* Type: **numeric**

### t.body.acc.mean.y
* Descr: **the mean body signal of the accelerometer y-axis of the time domain**
* Type: **numeric**

### t.body.acc.mean.z
* Descr: **the mean body signal of the accelerometer z-axis of the time domain**
* Type: **numeric**

### t.gravity.acc.mean.x
* Descr: **the mean gravity signal of the accelerometer x-axis of the time domain**
* Type: **numeric**
  
### t.gravity.acc.mean.y
* Descr: **the mean gravity signal of the accelerometer y-axis of the time domain**
* Type: **numeric**

### t.gravity.acc.mean.z
* Descr: **the mean gravity signal of the accelerometer z-axis of the time domain**
* Type: **numeric**

### t.body.acc.jerk.mean.x
* Descr: **the mean jerk motion of body signal of the accelerometer x-axis of the time domain**
* Type: **numeric**

### t.body.acc.jerk.mean.y
* Descr: **the mean jerk motion of body signal of the accelerometer y-axis of the time domain**
* Type: **numeric**

### t.body.acc.jerk.mean.z
* Descr: **the mean jerk motion of body signal of the accelerometer z-axis of the time domain**
* Type: **numeric**

### t.body.gyro.mean.x
* Descr: **the mean body signal of the gyroscope x-axis of the time domain**
* Type: **numeric**

### t.body.gyro.mean.y
* Descr: **the mean body signal of the gyroscope y-axis of the time domain**
* Type: **numeric**

### t.body.gyro.mean.z
* Descr: **the mean body signal of the gyroscope z-axis of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.mean.x
* Descr: **the mean jerk motion of body signal of the gyroscope x-axis of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.mean.y
* Descr: **the mean jerk motion of body signal of the gyroscope y-axis of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.mean.z
* Descr: **the mean jerk motion of body signal of the gyroscope z-axis of the time domain**
* Type: **numeric**

### t.body.acc.mag.mean
* Descr: **the mean magnitude body signal of the accelerometer of the time domain**
* Type: **numeric**

### t.gravity.acc.mag.mean
* Descr: **the mean magnitude gravity signal of the accelerometer of the time domain**
* Type: **numeric**

### t.body.acc.jerk.mag.mean
* Descr: **the mean magnitude jerk motion body signal of the accelerometer of the time domain**
* Type: **numeric**

### t.body.gyro.mag.mean
* Descr: **the mean magnitude body signal of the gyroscope of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.mag.mean
* Descr: **the mean magnitude jerk motion body signal of the gyroscope of the time domain**
* Type: **numeric**

### f.body.acc.mean.x
* Descr: **the mean body signal of the accelerometer x-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.mean.y
* Descr: **the mean body signal of the accelerometer y-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.mean.z
* Descr: **the mean body signal of the accelerometer z-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.meanfreq.x
* Descr: **the mean frequency body signal of the accelerometer x-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.meanfreq.y
* Descr: **the mean frequency body signal of the accelerometer y-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.meanfreq.z
* Descr: **the mean frequency body signal of the accelerometer z-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.mean.x
* Descr: **the mean jerk motion body signal of the accelerometer x-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.mean.y
* Descr: **the mean jerk motion body signal of the accelerometer y-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.mean.z
* Descr: **the mean jerk motion body signal of the accelerometer z-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.meanfreq.x
* Descr: **the mean frequency jerk motion body signal of the accelerometer x-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.meanfreq.y
* Descr: **the mean frequency jerk motion body signal of the accelerometer y-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.meanfreq.z
* Descr: **the mean frequency jerk motion body signal of the accelerometer z-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.mean.x
* Descr: **the mean body signal of the gyroscope x-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.mean.y
* Descr: **the mean body signal of the gyroscope y-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.mean.z
* Descr: **the mean body signal of the gyroscope z-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.meanfreq.x
* Descr: **the mean frequency body signal of the gyroscope x-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.meanfreq.y
* Descr: **the mean frequency body signal of the gyroscope y-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.meanfreq.z
* Descr: **the mean frequency body signal of the gyroscope z-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.mag.mean
* Descr: **the mean magnitude body signal of the accelerometer of the frequency domain**
* Type: **numeric**

### f.body.acc.mag.meanfreq
* Descr: **the mean fequency magnitude body signal of the accelerometer of the frequency domain**
* Type: **numeric**

### f.body.body.acc.jerk.mag.mean
* Descr: **the mean magnitude jerk motion body signal of the accelerometer of the frequency domain**
* Type: **numeric**

### f.body.body.acc.jerk.mag.meanfreq
* Descr: **the mean frequency magnitude jerk motion body signal of the accelerometer of the frequency domain**
* Type: **numeric**

### f.body.body.gyro.mag.mean
* Descr: **the mean magnitude body signal of the gyroscope of the frequency domain**
* Type: **numeric**

### f.body.body.gyro.mag.meanfreq
* Descr: **the mean frequency magnitude body signal of the gyroscope of the frequency domain**
* Type: **numeric**

### f.body.body.gyro.jerk.mag.mean
* Descr: **the mean magnitude jerk motion body signal of the gyroscope of the frequency domain**
* Type: **numeric**

### f.body.body.gyro.jerk.mag.meanfreq
* Descr: **the mean frequency magnitude jerk motion body signal of the gyroscope of the frequency domain**
* Type: **numeric**

### t.body.acc.std.x
* Descr: **the standard deviation body signal of the accelerometer x-axis of the time domain**
* Type: **numeric**

### t.body.acc.std.y
* Descr: **the standard deviation body signal of the accelerometer y-axis of the time domain**
* Type: **numeric**

### t.body.acc.std.z
* Descr: **the standard deviation body signal of the accelerometer z-axis of the time domain**
* Type: **numeric**

### t.gravity.acc.std.x
* Descr: **the standard deviation gravity signal of the accelerometer x-axis of the time domain**
* Type: **numeric**
  
### t.gravity.acc.std.y
* Descr: **the standard deviation gravity signal of the accelerometer y-axis of the time domain**
* Type: **numeric**

### t.gravity.acc.std.z
* Descr: **the standard deviation gravity signal of the accelerometer z-axis of the time domain**
* Type: **numeric**

### t.body.acc.jerk.std.x
* Descr: **the standard deviation jerk motion of body signal of the accelerometer x-axis of the time domain**
* Type: **numeric**

### t.body.acc.jerk.std.y
* Descr: **the standard deviation jerk motion of body signal of the accelerometer y-axis of the time domain**
* Type: **numeric**

### t.body.acc.jerk.std.z
* Descr: **the standard deviation jerk motion of body signal of the accelerometer z-axis of the time domain**
* Type: **numeric**

### t.body.gyro.std.x
* Descr: **the standard deviation body signal of the gyroscope x-axis of the time domain**
* Type: **numeric**

### t.body.gyro.std.y
* Descr: **the standard deviation body signal of the gyroscope y-axis of the time domain**
* Type: **numeric**

### t.body.gyro.std.z
* Descr: **the standard deviation body signal of the gyroscope z-axis of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.std.x
* Descr: **the standard deviation jerk motion of body signal of the gyroscope x-axis of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.std.y
* Descr: **the standard deviation jerk motion of body signal of the gyroscope y-axis of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.std.z
* Descr: **the standard deviation jerk motion of body signal of the gyroscope z-axis of the time domain**
* Type: **numeric**

### t.body.acc.mag.std
* Descr: **the standard deviation magnitude body signal of the accelerometer of the time domain**
* Type: **numeric**

### t.gravity.acc.mag.std
* Descr: **the standard deviation magnitude gravity signal of the accelerometer of the time domain**
* Type: **numeric**

### t.body.acc.jerk.mag.std
* Descr: **the standard deviation magnitude jerk motion body signal of the accelerometer of the time domain**
* Type: **numeric**

### t.body.gyro.mag.std
* Descr: **the standard deviation magnitude body signal of the gyroscope of the time domain**
* Type: **numeric**

### t.body.gyro.jerk.mag.std
* Descr: **the standard deviation magnitude jerk motion body signal of the gyroscope of the time domain**
* Type: **numeric**

### f.body.acc.std.x
* Descr: **the standard deviation body signal of the accelerometer x-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.std.y
* Descr: **the standard deviation body signal of the accelerometer y-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.std.z
* Descr: **the standard deviation body signal of the accelerometer z-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.std.x
* Descr: **the standard deviation jerk motion body signal of the accelerometer x-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.std.y
* Descr: **the standard deviation jerk motion body signal of the accelerometer y-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.jerk.std.z
* Descr: **the standard deviation jerk motion body signal of the accelerometer z-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.std.x
* Descr: **the standard deviation body signal of the gyroscope x-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.std.y
* Descr: **the standard deviation body signal of the gyroscope y-axis of the frequency domain**
* Type: **numeric**

### f.body.gyro.std.z
* Descr: **the standard deviation body signal of the gyroscope z-axis of the frequency domain**
* Type: **numeric**

### f.body.acc.mag.std
* Descr: **the standard deviation magnitude body signal of the accelerometer of the frequency domain**
* Type: **numeric**

### f.body.body.acc.jerk.mag.std
* Descr: **the standard deviation magnitude jerk motion body signal of the accelerometer of the frequency domain**
* Type: **numeric**

### f.body.body.gyro.mag.std
* Descr: **the standard deviation magnitude body signal of the gyroscope of the frequency domain**
* Type: **numeric**

### f.body.body.gyro.jerk.mag.std
* Descr: **the standard deviation magnitude jerk motion body signal of the gyroscope of the frequency domain**
* Type: **numeric**

**citation:**
* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
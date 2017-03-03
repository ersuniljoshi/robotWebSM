# Pre-Requisites for installation to run scripts on Robot Framework:

##__For Ubuntu__

*  __Install pip__
```
apt-get -y install python-pip
```

Use Python (version>2): pip comes by default

* __Install Robot Framework__
```
sudo pip install robotframework
```

* __Install Selenium2Library__
```
sudo pip install robotframework-selenium2library
```

  * Manual installation of Selenium2Library

If you do not have network connection or cannot make proxy to work, you need to resort to manual installation. This requires installing both the library and its dependencies yourself.

Make sure you have Robot Framework installed.

Download source distributions (*.tar.gz) for the library and its dependencies:

  1.[Robot framework and selenium2library](https://pypi.python.org/pypi/robotframework-selenium2library)

  2.[Python Package index selenium 3.0.2](https://pypi.python.org/pypi/selenium)

  3.[Python Package index decorator 4.0.10](https://pypi.python.org/pypi/decorator)


Extract each source distribution to a temporary location.

Go each created directory from the command line and install each project using:

* __Install AppiumLibrary__
```
sudo pip install robotframework-appiumlibrary
```

* __Use Pycharm IDE__

#Configurations to be made in Pycharm IDE for running robot scripts:

* Go to

0. __Files__

1.  __Settings__

2. __Plugins__

3. __Browse repositories__

4. __search "intellibot"__

5. __click install__

6. __apply__

7.  __OK__

* Go to

1. __Files__

2. __Settings__

3. __Tools__

4. __External Tools__

5. __click on "+"__

6. __start filling__

7. __Name=Robot__

8. __Program=robot__

9. __Parameters=-d Results $FileName$__

10. __working directory=$FileDir$__

11. __click OK__

##Steps for writing Robot script:

* Create a directory for the test suite
* Under that $dir$-> create Tests directory & Results Directory for simple Robot script

##Command to run the robot script:

```
robot -d Results Tests/$Filename.robot$
```

##Important Links

* [Robot with Pycharm](http://blog.bigbinary.com/2015/10/11/configuring-pycharm-to-run-tests.html)

* [Robot with selenium grid 2.0](http://softwaretester.info/robot-framework-selenium-grid-2-0/)

* [Robot with selenium grid example](https://www.gridlastic.com/robot-framework-selenium-grid-example.html)

* [Robot with appium for native app](https://www.youtube.com/watch?v=uYA893Rnqaw)

* [Robot Framework tutorial](https://www.udemy.com/robot-framework-level-1/learn/v4/content)

* [Location Strategies for gps location](https://developer.android.com/guide/topics/location/strategies.html)

* [Robot framework with docker](https://blog.tacitlabs.io/running-robot-framework-scripts-in-a-docker-container-e901bf36927c#.qcgginoil)

* [Robot with Jenkins](https://blog.codecentric.de/en/2016/07/robot-framework-tutorial-2016-integration-jenkins/)

* [Read data from excel file in robot framework-video](https://www.youtube.com/watch?v=8hMEkeZKo68)

* [Robot Framework-working with Excellibrary](http://www.ufthelp.com/2016/01/robot-framework-working-with-excel_28.html)

* [Robot framework and Excel](http://laurent.bristiel.com/robot-framework-and-excel/)

* [Robot framework documentation](https://media.readthedocs.org/pdf/robot-framework/latest/robot-framework.pdf)

* [Read data from excel file in robot framework](https://blog.codecentric.de/en/2013/05/robot-framework-tutorial-loops-conditional-execution-and-more/)

* [Resource file & variable file](https://github.com/robotframework/robotframework/blob/master/doc/userguide/src/CreatingTestData/ResourceAndVariableFiles.rst#taking-resource-files-into-use)


  ##__For Windows__

* __Install pip and python__
```
Navigate to python.org
```
```
Download the windows installer
```
```
Select “add python to PATH” option
```
```
Verify c:\python27 exists
```
```
Verify c:\python27\scripts\pip.exe exists
```
```
Verify both directories are in path
```
```
Type python -v in command line
```
```
Type pip -v in command line
```

* __Install Robot Framework__
```
pip install robotframework
```

* __Install Selenium2Library__
```
pip install robotframework-selenium2library
```

* __Install AppiumLibrary__
```
pip install robotframework-appiumlibrary
```

* __Use Pycharm IDE__
```
GO to jetbrains.com
```
```
Click products> pycharm
```
```
Download & install community edition
```
```
Launch Pycharm
```
```
Open Files>Settings dialog
```
```
Click on plugins
```
```
Search “intellibot” plugin and install
```
```
Restart pycharm
```

#Add Environment Variable in Windows

[Adding Environment Variable in Windows](http://www.computerhope.com/issues/ch000549.htm)

#Configurations to be made in Pycharm IDE for running robot scripts:

* Go to

0. __Files__

1.  __Settings__

2. __Plugins__

3. __Browse repositories__

4. __search "intellibot"__

5. __click install__

6. __apply__

7.  __OK__

* Go to

1. __Files__

2. __Settings__

3. __Tools__

4. __External Tools__

5. __click on "+"__

6. __start filling__

7. __Name=Robot__

8. __Program=robot__

9. __Parameters=-d Results $FileName$__

10. __working directory=$FileDir$__

11. __click OK__

##Steps for writing Robot script:

* Create a directory for the test suite
* Under that $dir$-> create Tests directory & Results Directory for simple Robot script

##Command to run the robot script:

```
robot -d Results Tests/$Filename.robot$
```
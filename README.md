# Pre-Requisites for running scripts on Robot Framework:

  ##__For Ubuntu__

*  __Install pip__
```
sudo apt-get pip
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

  1. [https://pypi.python.org/pypi/robotframework-selenium2library]

  2. [https://pypi.python.org/pypi/selenium]

  3. [https://pypi.python.org/pypi/decorator]


Extract each source distribution to a temporary location.

Go each created directory from the command line and install each project using:

* __Install AppiumLibrary__
```
sudo pip install robotframework-appiumlibrary
```

* __Use Pycharm IDE__

#Configurations to be made in Pycharm IDE for running robot scripts:

* Go to __Files__-> __Settings__-> __Plugins__-> __Browse repositories__-> __search "intellibot"__-> __click install__-> __apply__-> __OK__

* Go to __Files__-> __Settings__-> __Tools__-> __External Tools__-> __click on "+"__-> __start filling__: __Name=Robot__, __Program=robot__, __Parameters=-d Results $FileName$__, __working directory=$FileDir$__-> __click OK__

##Steps for writing Robot script:

* Create a directory for the test suite
* Under that $dir$-> create Tests directory & Results Directory for simple Robot script

##Command to run the robot script:

```
robot -d Results Tests/$Filename.robot$
```

##Important Links

* [http://blog.bigbinary.com/2015/10/11/configuring-pycharm-to-run-tests.html] __Robot with Pycharm__

* [http://softwaretester.info/robot-framework-selenium-grid-2-0/] __Robot with selenium grid__

* [https://www.gridlastic.com/robot-framework-selenium-grid-example.html] __Robot with selenium grid__

* [https://www.youtube.com/watch?v=uYA893Rnqaw] __Robot with appium for native app__

* [https://www.udemy.com/robot-framework-level-1/learn/v4/content] __Robot Framework tutorial__

* [https://developer.android.com/guide/topics/location/strategies.html] __Location Strategies for gps location__

* [https://blog.tacitlabs.io/running-robot-framework-scripts-in-a-docker-container-e901bf36927c#.qcgginoil] __Robot framework with docker__

* [https://blog.codecentric.de/en/2016/07/robot-framework-tutorial-2016-integration-jenkins/] __Robot with Jenkins__

* [https://www.youtube.com/watch?v=8hMEkeZKo68] __Read data from excel file in robot framework__

* [http://www.ufthelp.com/2016/01/robot-framework-working-with-excel_28.html] __Read data from excel file in robot framework__

* [http://laurent.bristiel.com/robot-framework-and-excel/] __Read data from excel file in robot framework__

* [https://media.readthedocs.org/pdf/robot-framework/latest/robot-framework.pdf] __Read data from excel file in robot framework

* [https://blog.codecentric.de/en/2013/05/robot-framework-tutorial-loops-conditional-execution-and-more/] __Read data from excel file in robot framework__

* [https://github.com/robotframework/robotframework/blob/master/doc/userguide/src/CreatingTestData/ResourceAndVariableFiles.rst#taking-resource-files-into-use] __Resource file & variable file__

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

#Configurations to be made in Pycharm IDE for running robot scripts:

* Go to __Files__-> __Settings__-> __Plugins__-> __Browse repositories__-> __search "intellibot"__-> __click install__-> __apply__-> __OK__

* Go to __Files__-> __Settings__-> __Tools__-> __External Tools__-> __click on "+"__-> __start filling__: __Name=Robot__, __Program=robot__, __Parameters=-d Results $FileName$__, __working directory=$FileDir$__-> __click OK__

##Steps for writing Robot script:

* Create a directory for the test suite
* Under that $dir$-> create Tests directory & Results Directory for simple Robot script

##Command to run the robot script:

```
robot -d Results Tests/$Filename.robot$
```

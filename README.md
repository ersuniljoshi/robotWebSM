# Pre-Requisites for running scripts on Robot Framework:

## For __Ubuntu__

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

## __Windows__

* __Install pip and python__

1. Navigate to python.org


2. Download the windows installer


3. Select “add python to PATH” option


4. Verify c:\python27 exists


5. Verify c:\python27\scripts\pip.exe exists


6. Verify both directories are in path


7. Type python -v in command line


8. Type pip -v in command line


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

1.GO to jetbrains.com


2. Click products> pycharm


3. Download & install community edition


4. Launch Pycharm


5. Open Files>Settings dialog


6. Click on plugins


7. Search “intellibot” plugin and install


8. Restart pycharm


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

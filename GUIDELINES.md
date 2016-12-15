# robotWebSM
Robot Sample Script for Web
## Robot Framework Guideline
Below are the few key points that will help us follow an industry standard guidelines while using Robot framework for automation, that will further provide better understanding and lead us to more maintainable and readable code.


### Test Suite / Script 

* Test Script names should be less than 20 characters and file type should be HTML.
* It should be easily readable and self-explanatory.
* Remember that suite names are created automatically from file/directory names. Extensions are stripped, underscores are converted to spaces and, if name is all lower case, words are capitalized. For example login_tests.html -> Login Tests and DHCP_and_DNS -> DHCP and DNS.
* Documentation should be updated with purpose of the script and pre-conditions. We can use Log, Log to Console and Comment Keywords.
* Proper keywords should be given for Suite Setup, Suite Teardown, Test Setup and Test Teardown.
* Should not have too many tests (max 50) in one suite unless they are data-driven.

### Test Cases / Tests 

* Use Page Object Modularisation (POM) approach for the code re-usability.
* Test case names should be less than 40 characters 
* Test case Name should be in camel case (In a word, First letter is capital and remaining letters are in small).
* It should be easily readable and self explanatory.
* Use [Documentation] to define the test case what exactly is it for, so that it appears on the console for better picture of execution of the test cases.
* Documentation should be updated with manual test case steps, notes and pre-conditions. Proper keywords should be given for Suite Setup, Suite Teardown, Test Setup and Test Teardown.
* Appropriate tags should be given for each case. Use [Tags] in the script to provide clarity in the script as it segregates test cases whether it is smoke, sanity or any kind of testing.
* Tests should be independent. 
* Independent tests, detailed notes should be given. Consider verifying the status of the previous test using ${PREV TEST STATUS} variable.
* Hard coding of object name should be avoided.
* Should contain many high level keywords instead of repeating steps often.
* High level keywords should be used for navigation.
* Local variables should have prefix char ‘t’ as temporary variables
* Circular dependencies should not be there. For example TestCaseSuite.Robot includes /Resources/Common.Robot and that includes TestCaseSuite.Robot again.    

### Resources 

* Keep all resource files in single folder.
* Resource file names should be less than 20 characters 
* All characters should be small characters.
* Documentation should be updated with purpose.
* All constants should be maintained in separate resource file.
* Keep separate resource files for application’s data.
* Keep separate resource files for all GUI objects page wise or module-wise.
* Group the high level keywords by categories like business logic, module and general.
* Use Log to console , log etc as it is helpful for future debugging, also we can use Comment.
* All xpaths and locators should be defined as variables at one common place and can be fetched in each file wherever required that locator or xpath. This will help us change those locators at single place only.

### High Level Keyword / User Keyword / Function 

* Function names should be less than 35 characters.
* It should be easily readable and self explanatory.
* For easy readability, it should be in camel case (Capital & Small letters).
* Prefixes are sometimes useful. For example, Is - to ask a question about something, Get - get a value, Set - set a value
* Can have space for better readability.
* Documentation should have clear details for purpose, variables and returning values.
* Hard coding of object name should be avoided.
* Arguments should have char ‘p’ as prefix and returned variable should have char ‘r’ as prefix.
* Local variables should have prefix char ‘t’ as temporary variables
* Duplicate Functions should not be added.
* Can contain some programming logic (for loops, if/else)
* Complex logic in libraries rather than in user keywords
* Important variables can have comments on the RHS

### Variables 

* Variable names should be less than 20 characters.
* Variables should have meaningful words
* For easy readability, it should be in camel case (Capital & Small letters).
* Local variables should have prefix char ‘t’ as temporary variables
* Arguments should have char ‘p’ as prefix and returned variable should have char ‘r’ as prefix.
* GUI object variables should have char ‘o’ as prefix.
* Constant variables should be in Capital letters. For example, APP_URL, DB_SERVER. All other type of variables should have mixed style (small and capital) characters.
* Script/Global variables should be defined at the top of the script.
* Function / test case level variables should be defined at top of the function.
* Can have space. But try to restrict for minimum

### Running Robot Scripts Smartly :

1. Initial command :  
```
pybot myscript.robot
```
2. Running only single test :  
```
pybot -t  “myscript.robot
```
3. Storing report in Result directory :  
```
pybot -d Results  myscript.robot
```
4. Running test cases by TagName:  
```
pybot -i TagName myscript.robot
```
5. Changing the report title:  
```
pybot --reporttitle “My New Title” -d Results  myscript.robot
```
6. Changing Log Title:  
```
pybot --logtitle “My New Title” -d Results  myscript.robot
```
7. Making Critical and Non-critical test case in report by using Tagnames:  --critical(tag name)  &  --noncritical(tag name)

8. Prevents duplicating Result/Log names :  
```
pybot -d Results --timestampoutputs myscript.robot
```
9. Running only failed test cases :  --rerunfailed results/output.xml myscript.robot

### Some XPath Tricks :

1. __To find a particular text from page__: //*[Contains(text(),"Help")]
2. __To find a Anchor tag/Link from page__: /a[Contains(text),”Login”]
3. __To find any Link/Text from class__ :   //*[@class=”links”]/li/a[Contains(text(),”Login”)]
4. __If 2 or more same id present and want to select first id only__ :  xpath=(//input[@type='checkbox'])[first()]
5. __If 2 or more same id present and want to select last id only__ :  xpath=(//input[@type='checkbox'])[last()]
6. __You want to select second checkbox and forth checkbox then use below command__:  selenium.click("xpath=(//input[@type='checkbox'])[position()=2]"); selenium.click("xpath=(//input[@type='checkbox'])[position()=4]");
7. __To handle dynamically generated elements__ :  //button[starts-with(@id, 'continue-')]
8. __Match a suffix__ : //div[ends-with(@id,"suffixString")]
9. __To get all Anchor tags from page__ : //a[starts-with(@href, '#')]
10. __Selecting Any Attributes__ : //div[@name='continue'] ;  //input[@type='button']
11. __Finding XPath direct by link__ : //*[text()='Login']
12. __Link Search By href__ : //a[contains(@href,'av.iccsafe')]
13. __RunTime XPath__ :  xpath=//*[contains(text(),"Any text __${firstname}__ ")]  where __${firstname}__ is the variable where we pass the dynamic/runtime value.


## Useful References:

[https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst]


[http://www.slideshare.net/pekkaklarck/robot-framework-dos-and-donts]


[http://www.guru99.com/xpath-selenium.html]



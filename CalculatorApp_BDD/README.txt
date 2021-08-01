# CanvasApplication_QAAutomation

This is a Behaviour Data Driven Framework (BDD) using Cucumber,Maven,selenium,TestNG,Sikuli for Automation of calculator application. 
Below is the link.

https://www.online-calculator.com/

# Pre-requisites 

1. Configure Java on your system.
2. Install Maven and Eclipse on your System
3. Add Natural plugin to support Cucumber and Gherkin


# Update maven repositories in Eclipse?

Once you have cloned and open project in eclipse, you need to update all the maven repositories for your project.

You can right-click on your project then Maven -> Update Project..., 
Then select Force Update of Snapshots/Releases checkbox then click OK.


Also Run Maven > clean and Maven > Install commands by right-click on your project

# How to Run the TestCases and View Report
1. To Trigger the run, follow any of the below steps
	Way1:
		> Open command prompt in the Project location.
		> Run command : mvn clean verify
	Way2:
		> Right click on pom.xml -> RunAs -> Maven test
	Way3:
		> Right click on testng.xml -> RunAs -> TestNg Suite
	
2. Once test execution is done, view the report in the folder Reports -> MyOwnReport.html
3. You can see the total Features, Scenarios and Steps got executed in html report dashboard. 
4. To check for failure, explicitly makes the below case to fail
   TestCase: TC_Add lower value from higher value with decimal point. 
   As expected we got Assertion fail. 


package StepDef;

import java.util.concurrent.TimeUnit;

import org.testng.Assert;

import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.GherkinKeyword;
import com.aventstack.extentreports.gherkin.model.Feature;
import com.aventstack.extentreports.gherkin.model.Scenario;

import Listners.ExtentReportListeners;
import PageObject.Page_Calculator;
import Utility.DriverFactory;
import Utility.Helper;
import cucumber.api.java.en.*;

public class Steps_OnlineCalculator extends ExtentReportListeners{
	
	Page_Calculator pageCalculator;
	
	@Given("I launch Calculator application")
	public void i_launch_Calculator_application() {
		ExtentTest logInfo = null;
		try {
			test = extent.createTest(Feature.class, Hooks.featureName);
			test = test.createNode(Scenario.class, Hooks.scenarioName);
			logInfo = test.createNode(new GherkinKeyword("Given"), "Launch Application");
			
			System.out.println(Helper.getValueFromPropertyFile("url"));
			DriverFactory.getInstance().getDriver().navigate().to(Helper.getValueFromPropertyFile("url"));
			
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			logInfo.pass("Application successfully launched");
		}
		catch(AssertionError | Exception e) {
			testStepHandle("FAIL", DriverFactory.getInstance().getDriver(), logInfo, e);
		}
	}

	@Given("I verify online calculator page is displayed")
	public void i_verify_online_calculator_page_is_displayed() {
		ExtentTest logInfo = null;
		try {
			logInfo = test.createNode(new GherkinKeyword("Given"), "Verify Calculator Page");
			
			pageCalculator = new Page_Calculator(DriverFactory.getInstance().getDriver());
			Assert.assertTrue(pageCalculator.verify_Online_Calculator_Isdisplayed());
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			logInfo.pass("Calculator Application page is displayed");
		}
		catch(AssertionError | Exception e) {
			testStepHandle("FAIL", DriverFactory.getInstance().getDriver(), logInfo, e);
		}
	}

	
	@When("I choose {string} operation {string} from {string}")
	public void i_choose_operation_from(String operationType, String value1, String value2) {
		ExtentTest logInfo = null;
		try {
			logInfo = test.createNode(new GherkinKeyword("Given"), "I Enter values for "+operationType+ "value1 :"+value1+", value2 :"+value2);
			
			String mathSignature = Helper.get_Math_Operation_Sign(operationType);
			Helper.on_Click_Key_Image(value1);
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			Helper.on_Click_Operator_Image(mathSignature);
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			Helper.on_Click_Key_Image(value2);
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			Helper.on_Click_Operator_Image("Sign_Equals");
			
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			logInfo.pass(operationType+"Calculation is Performaed");
		}
		catch(AssertionError | Exception e) {
			testStepHandle("FAIL", DriverFactory.getInstance().getDriver(), logInfo, e);
		}
	}

	@Then("I verify the end result {string}")
	public void i_verify_the_end_result(String expectedResult) {
		ExtentTest logInfo = null;
		try {
			logInfo = test.createNode(new GherkinKeyword("Given"), "Verify Result");
			
			Assert.assertTrue(Helper.verify_Output(DriverFactory.getInstance().getDriver(), expectedResult));
			
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			logInfo.pass("Expected Result : "+expectedResult+" matches successfully with Actual result : "+Helper.actualValue);
		}
		catch(AssertionError | Exception e) {
			testStepHandle("FAIL", DriverFactory.getInstance().getDriver(), logInfo, e);
		}
	}
	
	@When("I choose {string} operation for multiple integers {string}")
	public void i_choose_operation_for_multiple_integers(String operationType, String values) {
		ExtentTest logInfo = null;
		try {
			logInfo = test.createNode(new GherkinKeyword("Given"), "I Enter values for "+operationType+ "calculation from left to right. Mu=y values : "+values);
			
			String mathSignature = Helper.get_Math_Operation_Sign(operationType);
			
			String[] valueArray = values.split(",");
			for(int i=0; i<=valueArray.length; i++) {
				Helper.on_Click_Key_Image(valueArray[i]);
				logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
				
				if(i == valueArray.length-1) {
					break;
				}
				else {
					Helper.on_Click_Operator_Image(mathSignature);
					logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
				}
			}
			Helper.on_Click_Operator_Image("Sign_Equals");
			
			logInfo.addScreenCaptureFromPath(captureScreenShot(DriverFactory.getInstance().getDriver()));
			logInfo.pass(operationType+" calculation is performed");
		}
		catch(AssertionError | Exception e) {
			testStepHandle("FAIL", DriverFactory.getInstance().getDriver(), logInfo, e);
		}
	}

}

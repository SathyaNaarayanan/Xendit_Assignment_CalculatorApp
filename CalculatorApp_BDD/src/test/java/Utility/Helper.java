package Utility;

import java.util.Properties;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.sikuli.script.FindFailed;
import org.sikuli.script.Pattern;
import org.sikuli.script.Screen;

public class Helper {
	
	PropertyFileReader fileReader = new PropertyFileReader();
	public static String actualValue ;
	public static String getValueFromPropertyFile(String key) {
		Helper helper = new Helper();
		String value = "";
		try {
			Properties prop = helper.fileReader.getProperty();
			value =  prop.getProperty(key);
			 
		} catch (Exception e) {
			e.printStackTrace();
			value = "No such key present";
		}
		return value;
	}
	
	public static void on_Click_Operator_Image(String val) throws FindFailed {
		Screen s = new Screen();
		Pattern image = new Pattern(System.getProperty("user.dir")+"\\CalculatorKeys\\key_"+val+".png");
		s.wait(image, 2000);
		s.click(image);
		on_Click_dummy_Area();
	}
	
	public static void on_Click_Key_Image(String val) throws FindFailed {
		Screen s;
		int valLen = val.length();
		if(valLen == 1) {
			s = new Screen();
			Pattern image = new Pattern(System.getProperty("user.dir")+"\\CalculatorKeys\\key_"+val+".png");
			s.wait(image, 2000);
			s.click(image);
		}
		else if(valLen > 1) {
			String[] valArray = val.split("");
			for(String i : valArray) {
				if(i.equals(".")) {
					i = "decimal";
				}
				if(i.equals("-")) {
					i = "Sign_Minus";
				}
				s = new Screen();
				Pattern image = new Pattern(System.getProperty("user.dir")+"\\CalculatorKeys\\key_"+i+".png");
				s.wait(image, 2000);
				s.click(image);
				on_Click_dummy_Area();
			}
		}
	}
	
	public static void on_Click_dummy_Area() throws FindFailed {
		Screen s = new Screen();
		Pattern image = new Pattern(System.getProperty("user.dir")+"\\CalculatorKeys\\dummy.png");
		s.wait(image, 2000);
		s.click(image);
	}
	
	public static Boolean verify_Output(WebDriver driver, String expectedValue) throws InterruptedException {
		Thread.sleep(1000);
		JavascriptExecutor js = (JavascriptExecutor)driver;
		actualValue = (String) js.executeScript("return window.exportRoot.showscreen_txt.text");
		System.out.println(actualValue);
		return expectedValue.trim().equals(actualValue.trim());
	}
	
	static String mathSign = ""; 
	public static String get_Math_Operation_Sign(String operationType) {
		
		switch(operationType.toLowerCase()) {
		case "subtraction":
			mathSign = "Sign_Minus";
			break;
		case "division":
			mathSign = "Sign_Divide";
			break;
		case "addition":
			mathSign = "Sign_Plus";
			break;
		}
		return mathSign;
	}
}

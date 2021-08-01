package Utility;

import org.openqa.selenium.WebDriver;

public class DriverFactory {
	
	private DriverFactory() {
		
	}
	private static DriverFactory Instance = new DriverFactory();
	
	public static DriverFactory getInstance() {
		return Instance;
	}
	
	private WebDriver driver;

	public WebDriver getDriver() {
		return driver;
	}

	public void setDriver(WebDriver driver) {
		this.driver = driver;
	}
}

package Utility;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class BrowserFactory {

	public WebDriver LaunchBrowser(String BrowserName) {
		WebDriver driver = null;

		/*
		 * if(BrowserName.toLowerCase().equals("chrome")) {
		 * WebDriverManager.chromedriver().setup(); driver = new ChromeDriver(); }
		 */
		switch(BrowserName.toLowerCase()) {
			case "chrome":
				WebDriverManager.chromedriver().setup();
				driver = new ChromeDriver();
				break;
			case "firefox":
				WebDriverManager.firefoxdriver().setup();
				driver = new FirefoxDriver();
				break;
			case "default":
				break;
		}

		return driver;
	}
}

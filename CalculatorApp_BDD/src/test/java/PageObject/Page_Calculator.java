package PageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Page_Calculator {
	
	WebDriver driver;
	public Page_Calculator(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
	
	
	@FindBy(xpath = "//div[@id='animation_container']//canvas[1]")
	private WebElement Frame_CalculatorApp;
	
	public Boolean verify_Online_Calculator_Isdisplayed() {
		try {
			return Frame_CalculatorApp.isDisplayed();
		}
		catch(Exception e) {
			throw e;
		}
	}

}

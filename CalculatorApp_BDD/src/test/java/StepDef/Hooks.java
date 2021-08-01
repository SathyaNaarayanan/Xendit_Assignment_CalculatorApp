package StepDef;

import java.io.File;
import java.util.concurrent.TimeUnit;

import Listners.ExtentReportListeners;
import Utility.BrowserFactory;
import Utility.DriverFactory;
import Utility.Helper;
import cucumber.api.Scenario;
import cucumber.api.java.*;

public class Hooks extends ExtentReportListeners{
	
	public static String featureName ="";
	public static String scenarioName ="";

	@Before
	public void launch_Application(Scenario scenario) throws Exception {
		try {
			delete_Existing_ScreenShots();
			
			scenarioName = scenario.getName();
			System.out.println("Name : " +scenario.getName());
			String x = scenario.getId().split(":")[0].split("/")[1].replace(".feature", "");
			System.out.println("ID : " +x);
			
			String rawFeatureName = scenario.getId().split(":")[0].split("/")[1].replace(".feature", "");
			featureName = rawFeatureName.substring(0, 1).toUpperCase() + rawFeatureName.substring(1);
			
			
			BrowserFactory browserfac = new BrowserFactory();
			DriverFactory.getInstance().setDriver(browserfac.LaunchBrowser(Helper.getValueFromPropertyFile("browser")));
			DriverFactory.getInstance().getDriver().manage().deleteAllCookies();
			DriverFactory.getInstance().getDriver().manage().window().maximize();
			DriverFactory.getInstance().getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		}
		catch(Exception e) {
			throw e;
		}
	}
	
	@After
	public void tear_Down() {
		DriverFactory.getInstance().getDriver().quit();
	}
	
	public static void delete_Existing_ScreenShots() {
		File f = new File(System.getProperty("user.dir")+"\\Reports");
		File[] FileList = f.listFiles();
		System.out.println("**********Delete .png Files extension*********");
		boolean verify = false;
		for(File x : FileList) {
			if(x.isFile()) {
				String FileName = x.getName();
				int lastDot = FileName.lastIndexOf(".");
				String extension = FileName.substring(lastDot+1);
				if(extension.equals("png")) {
					x.delete();
				}
				verify = x.exists();
			}
		}
		System.out.println("Deleted file existance : "+verify);
	}
}

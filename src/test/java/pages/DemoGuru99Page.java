package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

import java.util.List;

public class DemoGuru99Page
{
    public DemoGuru99Page (){
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//thead//tr//th")
    public List<WebElement> baslikWebElementListesi;

    @FindBy(xpath = "//iframe[@class='faktor-iframe-wrapper']")
    public WebElement iframe;

    @FindBy(xpath = "//button[@id='save']")
    public WebElement cookiesKabulEtButonu;

    public List<WebElement> sutunListesiGetir(int index){
        String dynamicXpath = "//tbody//tr//td["+ (index+1) +"]";

        List<WebElement> istenenSutunWebElementleri = Driver.getDriver().findElements(By.xpath(dynamicXpath));

        return istenenSutunWebElementleri;

    }




}

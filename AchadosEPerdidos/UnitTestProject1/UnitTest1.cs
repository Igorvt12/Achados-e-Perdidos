using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using System.Diagnostics;
using OpenQA.Selenium.Chrome;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var sw = new Stopwatch();
            IWebDriver driver = new ChromeDriver(@"C:\Users\lab201\Downloads\TestResults\UnitTest");

            sw.Start();
            for (int i = 1; i <= 100; i++)
            {
                string nome = $"teste{i}@teste.com";
                string password = new Random(unchecked((int)DateTime.Now.Ticks)).Next(9999).ToString();
                driver.Navigate().GoToUrl("http://localhost:58616/Iniciall");
                driver.FindElement(By.Id("txtCreateNomeFuncionario")).SendKeys(nome);
                driver.FindElement(By.Id("txtSenha")).SendKeys(password);
                driver.FindElement(By.Id("txtConfSenha")).SendKeys(password);
                driver.FindElement(By.Id("btnCadastrar")).Click();
                driver.SwitchTo().Alert().Accept();
            }
            sw.Stop();
            var result = sw.Elapsed;
        }
    }
}

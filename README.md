# Setup Behat

##Before you start:
- Ensure that you have PHP 5.3+. installed
- Install Composer

###1) Run the following commands in the project directory:
> $ composer require behat/mink-extension behat/mink-goutte-driver

> $ composer require behat/mink-selenium2-driver

This will create composer.json file, download and install Behat, Mink and related libraries. All libraries will be downloaded to "vendor" folder. Also compoer.lock file will be created.

Selenium library is one of the ways to test JS by opening up a real browser. To run tests with Selenium you need to download [Selenium Server](http://www.seleniumhq.org/download/) and [driver for browser](http://www.seleniumhq.org/download/) where the tests will be run.</br>
For convenience you may create file with an extension “.bat” and specify path to selenium server and browser driver, like this:</br>
**java -jar C:\selenium\selenium-server-standalone-2.46.0.jar -Dwebdriver.chrome.driver="C:\selenium\chromedriver.exe"</br>**
From now you can run selenium server and browser driver with double click on the file.

###2) To initialize Behat, run in the same directory: 
> $ vendor/bin/behat --init

This will create "features" and "bootstrap" folders and the FeatureContext.php inside the "bootstrap" folder.

###3) Behat configuration:

Create behat.yml file in the project directory. Specify as many configurations as you need. 
For example, below we indicate that Behat should read step definitions from FeatureContext and MinkContext.
Also  we configure Mink extension, browser name and base url. 
```javascript
default:
    suites:
        default:
            contexts:
                - FeatureContext
                - Behat\MinkExtension\Context\MinkContext
    extensions:
        Behat\MinkExtension:
            goutte: ~
            selenium2: ~
            browser_name: 'chrome'
            base_url: https://www.wider.unu.edu
```
Now you are ready to create and run Behat tests!


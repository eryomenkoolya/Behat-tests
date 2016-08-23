# Setup Behat

Before you start:
- Ensure that you have PHP 5.3+. installed
- Install Composer

1) Run the following commands in the project directory:
$ composer require behat/mink-extension behat/mink-goutte-driver
$ composer require behat/mink-selenium2-driver
This will create composer.json file, download and install Behat, Mink and related libraries. All libraries will be downloaded to "vendor" folder. Also compoer.lock file will be created.
Selenium library is one of the ways to test JS by opening up a real browser.

2) Run in the same directory: 
$ vendor/bin/behat --init
This will initialize Behat, in other words create "features" folder, a "bootstrap" folder and the FeatureContext.php inside the "bootstrap" folder.

3) Behat configuration
Create behat.yml file in the project directory. Specify as many configurations as you need. For example, below we indicate that Behat should read step definitions from FeatureContext and MinkContext.
Also  we configure Mink extension, browser name and base url. 

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

Now you are ready to create and run Behat tests!


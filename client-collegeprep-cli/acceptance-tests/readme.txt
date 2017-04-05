>>> Set up the environment:
 
* Install RVM
	o $ curl -L https:// get.rvm.io | bash -s stable
* Install Ruby
	o $ rvm install 2.0.0 
	o $ rvm use ruby-2.0.0-p648 --defult
* Install Bundler 
	o $ gem install bundler
* Copy ‘acceptance-tests’ folder under the project
* Change the path to ‘acceptance-tests’
	o $ cd ~/acceptance-tests
* Run ‘bundle install’
	o $ bundle install

* Getting running with ChromeDriver
	Download the ChromeDriver executable "https://sites.google.com/a/chromium.org/chromedriver/" and follow the other instructions on the wiki page "https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver"


>>> Run Cucumber tests:

* To run all acceptance test:
	o Change the path to ‘acceptance-tests/UI’
		* $ cd ~/acceptance-tests/UI
	o run ‘cucumber’
		* $ cucumber


* TO run one feature file:
	o Change the path to ‘acceptance-tests/UI’
		* $ cd ~/acceptance-tests/UI
	o run ‘cucumber features/file_name.feature’
		* $ cucumber features/file_name.feature

 

>>> To pass argument through cucumber:  
* Run cucumber using different browser (default browser is ‘Fairfox’ and can be used with Chrome, IE, Safari):
	o Pass argument ‘bType=browser_name’
		* $ cucumber bType=Chrome
		* $ cucumber bType=ie features/file_name.feature

*Run cucumber using different test environment (default ‘env=test’ is ‘QA Test env’):
	o Pass argument ‘env= environment_name’. 
		* $ cucumber env= production
		* $ cucumber env= dev




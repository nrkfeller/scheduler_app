The only things that weren’t test in our cases were the actual home page links that we have throughout our website.
This includes the Picasso Logo on our Navbar and the link that is generated when you are signed in with your name. 
These would be very easy to test as we could create test cases similar to our other ones. We would simulate the clicking 
of the links and make sure the page generated, is the correct one. 

	This would be important to test as it would be unfavourable for us to have users redirected to the wrong pages.
	This ruins the seamless experience of a website and can create frustration for the user as they are expecting to
	go to one page, but end up on another. 
	We used very powerful testing framework called Capybara, Rspec and Guard. They Simulate the environment and a
	potential browser’s behavior. They test all the cases in a very quick and efficient manner. Running all simulations
	and test take less than 10 seconds.
	Load Impact allows us to create virtual stress tests on our website. By having multiple users access the website simultaneously,
	we are able to accurately predict how our website would act in a real life situation. 
	By creating virtual user we were able to accurately demonstrate what our website would look under a heavy load of
	users. The graph above shows that as the number of users increased, the load times were not affected. What was interesting 
	was the initial load time was the longest, and the subsequent ones were much faster. This shows that if our application were 
	to grow in users we would be able to ensure a good experience for them all. 
	For our first test we decided to use an application that simulates SQL injection attacks to ensure that any user that would
	use our website with malicious intent, wouldn’t be able to not only extract sensitive data, but somehow drop or edit our
	database. From the tests below you can see that all our HTML form entries passed the tests and we are not likely to experience
	any of these attacks with success. 
	
	
SQL Inject Me
SQL inject me is a free firefox add-on tool that uses HTML forms to simulate SQL injection hacks.
This tool ensures that no user is able to access or disrupt our database by using specific strings against our system. 
Sign In page

Sign Out Page

Contact us Page

Brakeman
Brakeman is a security scanner for ruby on rails application. Unlike other applications, it doesn’t need the server
to be running as it strictly analyzes the source code. It lets the user know of any security issues in the form a log. 


Deployed on whole application


By using Brakeman we were able to check the vulnerabilities of our source code. According to the test, there were 
some security warnings that we need to watch out for. First of all, because our sanitizer gem was not up to date,
there are some cross site scripting errors. This can easily be fixed by updating to the latest gem. Second, because
of our rails version, we are susceptible to DDOS attacks. This as well is easily fixed by updating our rails version.
Our last errors were due to our coding. Brakeman states that we have insufficient validation for two of our variables
that are needed for our students. It gave us different regex to use to fix this issue, meaning all of our problems 
can easily be fixed.
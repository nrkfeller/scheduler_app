Rapid prototyping is used to reduce the risks associated with a project. Rapid prototyping can reduce risks early in the project to avoid expensive costs associated with fixing problems in later stages of development. When building software that has complexity and potentially it is important to prototype. Prototyping significantly reduces the risk of overlooking a bug or unwanted behavior. This approach makes projects less prone to cost overruns and delays. Moreover, the early prototyping allows us to see what our final project will begin to look like at an early stage. This allows us to fix general errors and come up with new ideas early on in the development of our project instead of later on when it is a lot harder to change things. 
Designing the mock-ups and subsequently, assigning functionality is very straight forward with the rails framework since it uses HTML5 and CSS3; especially when paired with the bootstrap-sass front end library. Deployment with heroku Platform as a Service also allows for easy deployment on a cloud server that can be constantly updated with the latest prototype. 


5.1.1 Website Home Page
This is the main landing page of our website. When users visit our website this is where they will come to do things like sign in or sign up to use our services. Every part of our website can be accessed through this main page. 

5.1.2 Student Sign Up Page
Here is where new users will sign up. By entering the information listed, they will be able to create a new account to use our schedule generator. 


5.1.3 Sign In Page
Once users have an account, they will be able to sign in to this page. Also, if a user already has no account and mistakenly clicks on this page and doesn’t have an account, they have a link which will bring them to the sign up page to create one. 

5.1.4 Student Profile Page
Once you sign in, you are brought to your personalized student profile page. This page shows your information as well as your student record, course sequence, and the schedule you have generated if you have made one. 

5.1.5 Contact Us Page
If a user has any issues they can contact administrators through the contact us page. If they are logged in it automatically fills in their information and admins an email with their inquiry.

5.1.6 Software Engineering Course Sequence Page
The course sequence page displays the full list of courses needed to graduate from software engineering as well as the credits for each course and their prerequisites. 


5.1.7 Schedule 
The schedule page shows the schedule that you have generated based on your preferences. For the moment, we are using just a place holder with some classes to show how when the prototyping stage is over, it will look with a real generated schedule. 

Our latest version of the prototype includes various functionalities such as: signing up, signing in, and signing out. We have also included a mock up for the students profile page. The profile page will allow a student to visualize and track his record, sequence, and schedule, as well as update his or her password. In this version of the prototype, we have implemented the SOEN course sequence which is displayed in the students profile page. Here we display all the main courses that are needed to graduate from software engineering at Concordia. As well as all the prerequisites needed to take a class, and all the different options that you can specialize in like the games option. Furthermore, we have also implemented a contact us page in case any user runs into problems and needs us to try and troubleshoot them. This page sends sends emails to our administrators so they are able to fix the problems promptly. 
	Having this mock up allows us to tackle and understand the most complex portion of our application, which is the generation of a schedule based on a student’s preferences and record. This approach helps us greatly in the long run as we believe that the hardest part of this project will be creating the algorithm that will generate schedules based on the students preferences and record. In this stage of the prototype most of the framework is complete, leaving us lots of time to be allocated on working on the actual implementation of the schedule generator. 
	Here are a few of the various tools that were used to create this working prototype:
•	Ruby on Rails Framework
•	Github Version Control
•	SQLite 3
•	JQuery
•	BootStrap
•	JavaScript DataTable
•	FullCalender Rails Library
•	Capybara
•	RSpec
•	Guard
	To test the various components to ensure that our prototypes functions properly, as mentioned before we are using powerful testing tools so that we are able to always deliver a project with the least amount of bugs possible. By using Capybara, RSpec, and Guard in tandem we are able to write out test cases to ensure not only ourselves, but any possible clients or customers that our website will be fully functional to give them a seamless experience free of bugs. 
5.2 Risk

It is important to be able to identify potential problems that are liable to occur in the future. The main cause of problems in software development is lack of information. To hedge these problems we must make an effort to plan and prototype a reasonable amount.
When a risk is identified, we need to reduce the probability of the risk occurring and reduce its potential impact.  These risks can effectively delay our completion of deadlines such as team deadlines, deliverable deadlines as well as final report and presentation deadlines. Properly indicating the risks can help prevent wasting time and will help the team meet all deadlines efficiently. 
These 3 applications are testing software used for testing and debugging our website. Capybara is a library written in Ruby that allows us to simulate user interaction with our website. It can execute various tests to make sure an application is functioning as intended. RSpec is a behaviour-driven development framework for Ruby that allows us to create test cases to ensure that our application is performing as intended.

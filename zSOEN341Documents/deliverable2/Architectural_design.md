#Architectural Design

##4+1 Architectural View

###Logival View

The logical view gives an overview of the system and how it is implemented. It 
is represented using a class diagram which follows. The proposed solution
revolves around the interactions between the Student user and Administrator user
and their interactions with the Schedule Generator. The following diagram gives 
a conceptual idea on how the system is implemented and the methods that are to 
be implemented to achieve the desired goal. Looking at the diagram we can divide
into three entities or subsystems: Student, Administrator and Scheduler. 

The Student class mainly interacts with the Preference class by containing 
methods able to fetch and set attribute values of that class. Also, the 
StudentRecord class,PastCourse class and Schedule class are considered 
composites of Student since they are dependent on Student’s existence. This
means that without a student class there would not be a justification for having
a StudentRecord which holds PastCourse and Schedule. Every student has a student
record in the system which holds his previously taken classes and currently
selected classes to allow the display of a schedule which explains the link 
between the three classes mentioned previously.

The Administrator class, similarly to the Student class, mainly interacts with 
other classes by either setting or getting values from them. The class is able 
to modify the attributes of a Course class object where Course is an aggregate 
of ProgramSchedule. Course is an aggregate of ProgramSchedule since multiple
Course objects are contained within ProgramSchedule (refers to a program’s 
proposed course sequence) but a Course object can exist independent of 
ProgramSchedule. 

It is worth mentioning that both the Administrator class and the Student class 
are extensions of the User class but we aren’t considering user as a subsystem 
since it there to avoid repetition of similar attributes between our two main 
classes Administrator and Student. It also depicts the relation both the classes
have.


The ScheduleGenerator class unlike the previous entities only fetches 
information from other classes and returns a result of type Schedule. The 
schedule generator contains two main methods considered as classifiers. Since
both do not interact or require an object of their own class to function, they
only interact with objects from other classes. This class is considered a 
subsystem of its own, since it interacts with objects from 3 classes and returns
a value of another class. It also implements the main functionality of the 
solution.  

### Process View

The following section aims to demonstrate the flow of activities incurred 
between the user and the system. The chosen use cases are generating a schedule,
signing up to the system, and modifying a course. They are specifically selected 
since they include the use of one or more of the subsystems and expose major 
functionalities of the solution

The previous diagram shows the flow of activities when the Student user requests 
the generation of the schedule. As shown in the class diagrams there are two 
methods that can be executed: automatic generation or preference generation. 
Automatic will focus on fetching the Student’s record information and generate a
schedule based on the program sequence regardless of any preferences. Otherwise,
the preference generation requires additional user input that will impose 
constraints to the generated schedule. When the generation is completed it will 
save all the generated data into the student’s record and display the result on 
the UI. The flow of the system enumerates as follows:

1.	Student request the creation of a schedule. 
2.	Student is prompted to provide personal credentials to allow access to the 
    process.
3.	The system verifies the credentials and one of the two following outcomes 
    occur:
a.	If invalid, a new request is sent back to the user to enter his personal 
    credentials.
b.	If valid, the user moves on to the next action. 
4.	The user is requested to select auto generation or preference generation:
a.	If auto is selected the system fetches the past courses information 
    available within the student’s record and the program sequence related to 
    that student and generates a schedule according to these restrictions.
b.	If preference is selected then the user is prompted to enter day preferences, 
    then preferred hour times, then an amount of credits and finally he gets a 
    choice of choosing specific courses or not. If he request to select courses
    then the system will provide classes that fit his previous selections. If
    two courses are unable to coexist an error is displayed and the request will
    refresh. 
5.	The schedule generator acquires the previously collected data and generates 
    a schedule object which is associated with student’s record data.
6.	The schedule is then displayed to the user 

This diagram shows the flow of activities when a User requests to sign up to the
system. The system will initially prompt the user to provide their student ID 
which will be searched for in the database. If a student record is found the 
user will be asked to provide custom login information: a valid email and a 
password. If both comply with the determined constraints, the user profile is 
created and added into the database. It will be associated to the previously 
found student record. If the ID isn’t found, then the user will have to manually
provide their program and ID in addition of an email and a password which will
be used to set up a new student record and user profile. After these steps, the
user will sign in for the first time by providing their email and password. If
the values comply with the ones stored within the database, then the user’s 
profile page will be accessed and displayed. Otherwise, an error will be 
returned to the user and a request to provide their information again will
follow.


###Scenarios

The following diagrams will depict all the use cases that can be prompted by the
different user: Student, Administrator and User. 

The administrator use case diagram shows three main operations. The main 
functionality of the Administrator is interacting with the Course, CurrentCourse
and StudentRecord classes. Modify course allows the administrator to change the
attributes of an existing course within the database. Calling this operation
will offer the administrator to set any of its attributes in an unspecific order
but he isn’t required to modify all which explains why the set functions extend 
from the modify course. Similarly to the previous function, modify current 
course will enable the user to set values for an object of the class 
CurrentCourse. Finally, modify student record when prompted enables the 
administrator to add or modify a PastCourse object, but in this case the user
must set a value for all of the attributes to allow functionality. 


The student use case diagram shows the three main operations that a student user
is capable of accessing. The main functionality of a Student is requesting 
schedule generation, viewing the student record, and signing up to the system. 
When the Student user requests Sign Up he is given the option to set a student 
ID which is followed up by the necessity to provide a program and a password to 
the system. This justifies the use of an include. If the use case Request 
Sequence Generation is prompted by the user a selection is made between Auto 
Generate and Preference Generate that will allow the displaying of a schedule
for the Student with consideration of user defined constraints or without. Both
selections will Display Schedule and if user constraints are desired the
selections are not mandatory hence the extend for Set Preferences. Both the 
previous functions will interact and add values onto the database whereas the 
last use case View Student Record will only return values and display them to 
the UI. This use case allows the Student user to request values StudentRecord 
type from the database to be displayed onto the UI.


The user is a generalization of both Administrator and Student. The main use 
cases interact with the access to the system where one is the creation of a user
object. When a user requests Sign Up two simultaneous instances occur requesting
data from the user. The data obtained is added in the database and allows the
creation of the user object which is similarly the user’s profile on the
application. The Sign In and Sign Out use cases are available to allow the 
connection and disconnection of a user to the system. When connected they are 
granted access to interact with the system otherwise they will not be allowed 
to work on the system. 

#Detailed Design

## Detailed Design Digram

###Student Subsystem

The Student class can view its academic record and modify the values of the 
preference class. The student’s record is a composition of the student since it 
is considered dependant on the existence of a student to exist as well. From 
StudentRecord, we compose PastCourse which is a class that keeps track of the 
courses and operators. StudentRecord holds a list of PastCourse objects and a
value of type schedule holding the courses taken within the present time period.
Preferences hold values used as constraints for the schedule generation. 

###Administrator Subsystem



Administrator extends from the User class and inherits of all of its attributes 
and operators. The administrator is given privileged access to modify a 
multitude of other classes that can influence the functioning of the system as a 
whole. The administrator can mainly interact and modify values of the Course 
class and CurrentCourse (associated to Course) and set new values or create new 
object of these classes. He is also granted access to modify a Student’s 
StudentRecord data since he will be able to verify that the student’s 
information is valid. Finally ProgramSequence is an aggregation of Course 
objects that define the program’s course sequence and since the Administrator is
given access to modify Course and its prerequisites attribute, he is also
indirectly given access to modify ProgramSequence in that manner. 

###Schedule Generator Subsystem

The Schedule Generator subsystem as opposed to the previous subsystem does not 
modify but fetches information necessary to its classifier operators. Its 
operator implement the solution and grant the system the capability of assigning
courses to a Student. Since its operators are classifiers there is no necessity 
of creating objects of type ScheduleGenerator and neither the class will 
generate any from its operators. ScheduleGenerator implements two similar
functions where preferenceGenerate will require information of type Preference 
whereas the other wont. Both will have to get information from currentCourse and
Student. The output generated will be of type Schedule which is an aggregation
of currentCourse objects.  


Daniel Makardich

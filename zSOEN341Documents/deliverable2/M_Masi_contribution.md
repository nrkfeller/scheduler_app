user cases:

Brief Description: The User class is a parent class of Student and Administrator which shares its   attributes and methods onto both sub classes.
Attributes:
firstName: string
lastName: string
email: string
address: string
phoneNumber: string 
password: string

Methods: 
signUp()
                   	Instantiates the addition of a user profile to the system. 
signIn()
Verifies a user’s credentials, specifically email and password, within the database and determines if user is allowed access or not to the system.  
signOut()
                   	Redirects the user to the homepage after it has destroyed session cookie.
setName(firstName : string, lastName : string) : void                   
Sets the first and last name of the user as string inputs. 
getFullName() : string[]
                    	Returns first name and last name within an array.
setInfo(email : string, address : string, phoneNumber : string) : void
Sets the details of the users, e.g., email, address, and phone number as sting values.

getInfo() : string []
Returns email, address and phonNumber of the user object as an array of string values. 
setPassword(password : string)
                        Sets a string value for the password attribute.

Student Class
Brief Description:
It is a class which represents the student who wishes to use this course scheduler. It inherits its attributes and methods from the User class.
Attributes:
studentID: string
faculty: string
Methods: 
setStudentID(studentID : string) : void
                       Modifies studentID attribute with string input.
getStudentID() : string
                       Returns studentID attribute as a string.
setProgram(program : string) : void 
                       Modifies program attribute with string input.
getProgram() : string
                       Returns program attribute as a string.
setCreditPreference(creditPreference : int) : void
                       Sets the number of credits that will be taken by the student.
setTimeSlotPreference(timeSlotPreference : string) : void
                       Sets the time slot for a course being taken by the student. 
setDayPreference(dayPreference : string) : void   
                       Sets the time (day) preference by the student. 
addCourse() : boolean 
                  Returns a boolean value that confirms if the course can be added to student’s schedule.
get_student_record() : StudentRecord
                  Returns the student’s record.
                          
Administrator Class

Brief Description: 
                              It is a class that inherits its attributes and methods from User class. 
                              Administrator is granted permission to update students’ data. They have the
                              authority to change course information as needed and update student record. 
Attributes:
officeLocation: string
Methods: 
getOfficeLocation() : string
                       Gets the location of administrator’s office.
setAttribute(attribute : string = Administrator.officeLocation) : void
                      
addPrerequisites(newPrerequisite : course) : void
                       Adds new prerequisite courses if changes occur to the course sequence.
deletePrerequisite() : void 
                      Deletes a prerequisite course in case the course sequence is modified. 
setCourseName(courseName : string) : void
                      Sets the name of a course.
setCourseNumber(courseNumber : int) : void
                      Sets the number of a course. 
setCourseTitle(courseTitle : string) : void
                      Sets the title of a course taken by students.    
setCredit(credit : double) : void
                     Sets the number of credits.  
setNumberOfCourses(numberOfCourses : int) : void
                     Sets the number of courses being taken by the student.
setTimeSlot(timeSlot : DayTime) : void
                     Sets the time slot for courses taken by a student
setProfessor(professor : string) : void
                     Assigns a professor to a course taken by a group of students.
setTutor(tutor : string) : void
                     Assigns a tutor to a course taken by a group of students. 
setCourseTaken(courseTaken : PastCourse[]) : void
                     Sets courses taken by a student.

Course Class

Brief Description:
                              It is a class which contains information on courses being offered to the
                              student, e.g., course name, course number, course title, and number of credits
Attributes:
CourseName: string
CourseNumber: string
CourseTitle: string
crerdit: double
numberOfCourses: int
Prerequisites: Course[] 
Methods: 
getcourseInfo() : string[]
                       Gets the information of a course set by the administrator, e.g., name, number, title, 
                       etc.
getPrerequisites() : Courses []
                       Gets prerequisite courses for any course to be taken by the student. 
getNumberOfCourses () : int
                       Gets the number of courses a student wants to take in a certain semester.  
getAllCourses() : Course []
                       Gets all courses being taken by the student. 
                                                
Preference Class

Brief Description: 
                             It is a class by which a student can choose number of credits they wish to take 
                             that fits in their time preference.      
Attributes:
dayPreference: string
timeSlotPreference: string
creditPreference: int


Methods: 
getDayPreference() : string
                       Gets the time (day) preferred by the student.
getTimeSlotPreference() : string
                       Gets the time slot for a course being taken by the student. 
getCreditPreference() : int
                       Gets the number of credits a student wants to take in a certain semester.               
check_conflict() : bool
                       Returns boolean indicating if there is a course conflict

CurrentCourse Class

Brief Description:
                              It is a class which contains information on each course to be taken by the
                              student. 
Attributes:
year: int
semester: string
timeSlot: DayTime
classRoom: ClassRoom
Professor: string
courseParent: Course
tutor: string
currentRegistered: int 
Methods: 
getYear() : int
                   Gets the year in which the student wants to take courses.
getSemester() : string
                   Gets the semester in which the student wants to take courses.   
getTimeSlot() :Daytime
                    Retrieves the time slot at which a course is being given.
getClassRoom() : ClassRoom
	
getProfessor() : string
                   Gets the name of the professor assigned to give a certain course.  
getCourseParent() : Course
                    Gets courses from the Course class. 
getTutor() : string
                   Gets the name of the tutor assigned to give tutorials for a certain course. 
getCurrentRegistered() : int
                   Retrieves courses that are currently registered for the student. 

ClassRoom Class

Brief Description:
                              It is a class which contains information on classrooms available for courses.
Attributes:
buildingName: string
roomNumber: string
capacity: int
Methods: 
getClassroom() : string[]
                   Gets the number of classroom in which a course is given.
getCapacity() : int
                   Gets the capacity of a classroom.   

StudentRecord Class

Brief Description:
                              It is a class which contains the academic record of each student, e.g., GPA,
                              courses taken, and current schedule.  
Attributes:  
GPA: double
courseTaken: PastCourse[]
currentSchedule: schedule 

 PastCourse Class

Brief Description:
                              It is a class which contains information on courses already taken, i.e. in which 
                              year and semester they had been taken by the student and the grade they got.
Attributes:  
Year: int
semester: int
grade: string
pass: boolean 

ScheduleGenerator Class

Brief Description:
                             Schedule generator is the main unit of the system by which a course schedule is 
                             generated automatically or by preference. 
Methods:  
autoGenerate(student : Student, currentCourses : CurrentCourse) : Schedule 
                         Automatically generates a course schedule for the student as CurrentCourse, and
                         Student objects passed to the method. 
                         to 
preferenceGenerate(preferences : Preference, parameter : CourrentCourse) : Schedule
                        Generates a course schedule for the student according to the student’s preference. 

ProgramSequence Class

Brief Description:
                              It is a class which contains course sequence of Software and Computer 
                              Engineering programs. Schedule generator basically generates a schedule for
                              the student based on the program course sequence.   
Attributes:  
courses: Course[]

Schedule Class

Brief Description:
                             It is a class in which the course schedule, generated by schedule generator, is 
                             stored and printed to the screen for the student.    
Attributes:  
courses: CurrentCourse[]

Component diagram:

[<img src="http://i.imgur.com/1GV6KHf.png?1">](http://imgur.com/)

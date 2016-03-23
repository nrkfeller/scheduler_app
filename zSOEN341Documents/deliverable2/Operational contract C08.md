Tis is the section regarding the Operatonal Contracts.

Give a full dynamic design of two substantial (i.e., having at least 3 system operations)

use cases including system sequence diagrams, operational contracts, and sequence diagrams.

Units and subsystems depicted here must be compatible with the descriptions provided in section 2 and 3.


Operatonal Contract C08

-->get the student record

Operation: get_student_record()


Cross References:  Use Case: Register for a Course according to Preference


Preconditions: Student instance exists.


			Course instance exists.
			
			
			PastCourse instance exists.
			
			
			StudentRecord instance exists.
			
			
Post conditions: StudentRecord associated with Student.


		     Course was associated with Student.

class Course
	def initialize(name, num , title, credit)
		@name = name.upcase
		@num  = num.to_i
		@title = title
	end

	def get_course
		return {name: @name, num: @num, title: @title}
	end
end

COMP = [
[108, "Computer Science Industrial Experience Reflective Learning I", 3],
[201, "Introduction to Computing", 3],
[208, "Computer Science Industrial Experience Reflective Learning II", 3, "COMP 108"],
[218, "Fundamentals of Programming", 3],
[228, "System Hardware", 3, "COMP 248"],
[229, "System Software", 3, "COMP 228; COMP 248"],
[232, "Mathematics for Computer Science", 3],
[233, "Probability and Statistics for Computer Science", 3],
[248, "Object-Oriented Programming I", 3],
[249, "Object-Oriented Programming II", 3, "COMP 248"],
[318, "Introduction to Database Applications", 4, "COMP 248"],
[326, "Computer Architecture", 3, "COMP 346"],
[335, "Introduction to Theoretical Computer Science", 3, "COMP 232; COMP 249"],
[339, "Combinatorics", 3, "COMP 232"],
[345, "Advanced Program Design with C++", 4, "COMP 352"],
[346, "Operating Systems", 4, " COMP 352;  COMP 228 or SOEN 228"],
[348, "Principles of Programming Languages", 3, "COMP 249"],
[352, "Data Structures and Algorithms", 3, "COMP 232; COMP 249"],
[353, "Databases", 4, "COMP 232; COMP 352"],
[354, "Introduction to Software Engineering", 4, "COMP 352; ENCS 282"],
[361, "Elementary Numerical Methods", 3, "COMP 232; COMP 249"],
[367, "Techniques in Symbolic Computation", 3, "COMP 232;  COMP 248"],
[371, "Computer Graphics ", 4, "COMP 232;  COMP 352"],
[376, "Introduction to Game Development", 4, "COMP 371"],
[426, "Multicore Programming", 4, "COMP 346"],
[428, "Parallel Programming", 4, "COMP 346"],
[442, "Complier Design ", 4,"COMP 228 or SOEN 228; COMP 335; COMP 352"],
[444, "System Software Design ", 4,"COMP 346"],
[445, "Data Communication and Computer Networks", 4, "COMP 346"],
[451, "Database Design", 4, "COMP 353"],
[465, "Design and Analysis of Algorithms ", 3, "COMP 232; COMP 335; COMP 339; COMP 352"],
[472, "Artificial Intelligence", 4, "COMP 352"],
[473, "Pattern Recognition", 4, "COMP 352"],
[474, "Intelligent Systems", 4, "COMP 352"],
[476, "Advanced Game Development", 4, "COMP 361 or ENGR 391; COMP 376"],
[477, "Animation for Computer Games", 4, "COMP 361 or ENGR 391; COMP 371"],
[478, "Image Processing", 4, "COMP 352"],
[479, "Information Retrieval and Web Search", 4, "COMP 233 or ENGR 371; COMP 352"],
[490, "Computer Science Project I", 3, "ENCS 282"],
[492, "Computer Science Project II", 3, "COMP 490"],
[495, "Honours Seminar", 1, "ENCS 282"],
[498, "Topics in Computer Science", 3]
]


SOEN = [
[228, "System Hardware", 4],
[287, "Web Programming", 3, "COMP 248"],
[298, "System Hardware Lab", 1],
[321, "Information Systems Security", 3, "COMP 346"],
[331, "Introduction to Formal Methods for Software Engineering", 3, "COMP 232 or COMP 249"],
[341, "Software Process", 3,"COMP 352 or COEN 352; ENCS 282 previously or concurrently"],
[342, "Software Requirements and Specifications", 3,"SOEN 341"],
[343, "Software Architecture and Design I", 3,"SOEN 341; SOEN 343"],
[344, "Software Architecture and Design II", 3,"SOEN 343"],
[345, "Software Testing, Verification and Quality Assurance", 3,"SOEN 343"],
[357, "User Interface Design ", 3,"SOEN 342"],
[384, "Management, Measurement and Quality Control", 3," ENCS 282; SOEN 341"],
[385, "Control Systems and Applications", 3,"ENGR 213; ENGR 233"],
[387, " Web-Based Enterprise Application Design", 3,"e: COMP 353; COMP 354; SOEN 341; Soen 287"],
[385, "Software Engineering Team Design Project", 3,"SOEN 344; SOEN 357"],
[422, "Embedded Systems and Software", 4,"COMP 346"],
[423, "Distributed Systems", 4,"COMP 346"],
[431, "Formal Methods", 3,"SOEN 342; SOEN 343"],
[448, "Management of Evolving Systems", 3,"SOEN 342; SOEN 343; SOEN 344"],
[449, "Component Engineering", 3,"SOEN 344"],
[487, "Web Services and Applications", 4,"SOEN 387"],
[498, "Capstone Software Engineering Design Project", 4,"SOEN 390"],
[498, "Software Engineering Project ", 1,],
[498, "Topics in Software Engineering", 3]
]

ENGR = [
[391, "Numerical Methods in Engineering", 3],
[371, "Probability and Statistics", 3],
[233, " Applied Advance Calculus", 3],
[213, "Applied Ordinary Differential Equations",3]
]

ENCS = [[282, "Technical Writing and Communication", 3]]

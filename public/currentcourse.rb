current_courses = [
	{course: ["Comp", 201], professor: "Stanislas Klasa", location: "MB S1.105 SGW", lecture: {lecture_day: "Tu", lecture_time: "5:45PM - 8:15PM"}, turorial: ["Tu 8:30PM - 9:20PM"]},

	{course: ["Comp", 218], professor: "Nancy Acemian", location: "Online", lecture: {lecture_day: nil, lecture_time: nil}, turorial:["Tu 8:30PM - 10:10PM", "Th 10:15AM - 11:55AM"]},

	{course: ["Comp", 228], professor: "David K Probst", location: "H 1070 SGW", lecture: {lecture_day: "We", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["We 8:30PM - 10:10PM"]},

	{course: ["Comp, 228"], professor: "David K Probst", location: "H 507 SGW", lecture: {lecture_day: "Mo", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Mo 8:30PM - 10:10PM"]},

	{course: ["Comp", 232], professor: "Gosta Grahne", location: "H 520 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Th 8:30PM - 10:10PM"]},

	{course: ["Comp", 232], professor: "Sabine Bergler", location: "H 620 SGW", lecture: {lecture_day:"TuTh", lecture_time: "1:15PM - 2:30PM"}, tutorial: ["Tu 2:45PM - 4:25PM"]},

	{course: ["Comp", 232], professor: "Troy Jason Taillefer", location: "H 633 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Tu 8:30PM - 10:10PM"]},

	{course: ["Comp", 233], professor: "Adam Krzyzak", location: "H 820 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Th 11:45AM - 1:35PM"]},

	{course: ["Comp", 233], professor: "Eusebius Doedel", location: "H 535 SGW", lecture: {lecture_day: "MoWe", lecture_time: "1:15PM - 2:30PM"}, tutorial: ["We 2:45PM - 4:35PM"]},

	{course: ["Comp", 248], professor: "Aiman Latif Hanna", location: "H 820 SGW", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}, tutorial: ["Fr 11:45AM - 1:25AM", "We 11:45AM - 1:25AM"], lab: ["Fr 1:35PM - 2:35PM", "We 1:35PM - 2:35PM"]},

	{course: ["Comp", 248], professor: "Aiman Latif Hanna", location: "MB S2.210 SGW", lecture: {lecture_day: "WeFr", lecture_time: "11:45AM - 1:00PM"}, tutorial: ["Mo 10:15AM - 11:50AM", "We 2:45PM - 4:25PM"], lab: ["Mo 12:00PM - 2:35PM", "Fr 4:35PM - 5:35PM"]},

	{course: ["Comp", 249], professor: "Mohamed Taleb", location: "H 535 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Th 8:30PM - 10:10PM", "Fr 5:45PM - 7:25PM"], lab: ["Th 4:30PM - 5:30PM", "Fr 7:35PM - 8:35PM"]},

	{course: ["Comp", 249], professor: "Jeremy Clark", location: "MB 5.275 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Th 8:30PM - 10:10PM", "Fr 5:45PM - 7:25PM"], lab: ["Th 4:30PM - 5:30PM", "Mo 5:45PM - 6:45PM"]},

	{course: ["Comp", 249], professor: "Nancy Acemian", location: "H 820 SGW", lecture: {lecture_day: "MoWe", lecture_time: "8:45AM - 10:00AM"}, tutorial: ["We 10:15AM - 11:55AM", "Mo 10:15AM - 11:55AM"], lab: ["Mo 12:10PM - 1:10PM", "We 12:10PM - 1:10PM"]},

	{course: ["Comp", 249], professor: "Mohamed Taleb", location: "H 535 SGW", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}, tutorial: ["Mo 10:15AM - 11:55AM", "We 11:45AM - 1:25PM"], lab: ["Mo 12:10PM - 1:10PM", "We 1:35PM - 2:35PM"]},

	{course: ["Comp", 335], professor: "Gosta Grahne", location: "H 520 SGW", lecture: {lecture_day: "TuTh", lecture_time: "11:45AM - 1:00PM"}, tutorial: ["Tu 1:15PM - 2:05PM", "Th 1:15PM - 2:05PM"]},

	{course: ["Comp", 345], professor: "Nora Houari", location: "MB S2.330 SGW", lecture: {lecture_day: "WeFr", lecture_time: "2:45PM - 4:00PM"}, lab: ["Fr 4:15PM - 6:05PM"]},

	{course: ["Comp", 346], professor: "Aiman Latif Hanna", location: "FG C070 SGW", lecture: {lecture_day: "We", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["We 8:30PM - 9:20PM", "Mo 1:15PM - 2:05PM"], lab: ["Mo 2:15PM - 4:05PM", "We 9:30PM - 11:20PM"]},

	{course: ["Comp", 346], professor: "Aiman Latif Hanna", location: "H 407 SGW", lecture: {lecture_day: "Tu", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Tu 8:30PM - 9:20PM", "Fr 1:15PM - 2:05PM"], lab: ["Tu 9:30PM - 11:20PM", "Fr 2:15PM - 4:05PM"]},

	{course: ["Comp", 348], professor: "Mohamed Taleb", location: "H 531 SGW", lecture: {lecture_day: "MoWe", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Mo 4:15PM - 5:05PM", "We 4:15PM - 5:05PM"]},

	{course: ["Comp", 352], professor: "Dhrubajyoti Goswami", location: "H 937 SGW", lecture: {lecture_day: "MoWe", lecture_time: "1:15PM - 2:30PM"}, tutorial: ["Mo 4:15PM - 5:05PM", "We 4:15PM - 5:05PM"]},

	{course: ["Comp", 353], professor: "Nematollaah Shiri Varnaamkhaasti", location: "FG C070 SGW", lecture: {lecture_day: "MoWe", lecture_time: "1:15PM - 2:30PM"}, tutorial: ["We 4:15PM - 5:05PM"], lab: ["We 5:15PM - 7:05PM", "Mo 5:15PM - 7:05PM"]},

	{course: ["Comp", 354], professor: "Gregory Butler", location: "H 411 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Th 8:30PM - 9:20PM"], lab: ["Th 9:30PM - 11:00PM"]},

	{course: ["Comp", 361], professor: "Adam Krzyzak", location: "GN M100 SGW", lecture: {lecture_day: "Mo", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["We 5:45PM - 6:35PM"]},

	{course: ["Comp", 367], professor: "Armen Atoyan", location: "H 521 SGW", lecture: {lecture_day: "TuTh", lecture_time: "11:45AM - 1:00PM"}},

	{course: ["Comp", 371], professor: "Charalambos Poullis, Sudhir Mudur", location: "H 507 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, lab: ["We 4:15PM - 6:05PM", "Th 8:30PM - 10:20PM", "Th 3:45PM - 5:35PM"]},

	{course: ["Comp", 442], professor: "Joey Paquet", location: "H 411 SGW", lecture: {lecture_day: "Mo", lecture_time: "5:45PM - 8:15PM"}, lab: ["Mo 8:30PM - 10:20PM", "Mo 3:45PM - 5:30PM"]},

	{course: ["Comp", 445], professor: "Javad Sadri", location: "H 521 SGW", lecture: {lecture_day: "MoWe", lecture_time: "1:15PM - 2:30PM"}, lab: ["Mo 11:10AM - 1:00PM","We 11:10AM - 1:00PM"]},

	{course: ["Comp", 472], professor: "Nora Houari", location: "H 561 SGW", lecture: {lecture_day: "Mo", lecture_time: "5:45PM - 8:15PM"}, lab: ["Mo 8:25PM - 10:25PM", "Th 5:45PM - 7:45PM", "Mo 8:25PM - 10:25PM"]},

	{course: ["Comp", 474], professor: "Sabine Bergler", location: "H 537 SGW", lecture: {lecture_day: "We", lecture_time: "5:45PM - 8:15PM"}, lab: ["Tu 3:00PM - 5:00PM", "Tu 6:00PM - 8:00PM"]},

	{course: ["Comp", 476], professor: "Sudhir Mudur, Thomas Fevens", location: "H 411 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, lab: ["Tu 6:10PM - 8:00PM", "We 6:10PM - 8:00PM", "Th 6:10PM - 8:00PM"]},

	{course: ["Comp", 490], professor: "David K Probst", location: nil, lecture: {lecture_day: nil, lecture_time: nil}},

	{course: ["Comp", 492], professor: "David K Probst", location: nil, lecture: {lecture_day: nil, lecture_time: nil}},

	{course: ["Comp", 495], professor: "David K Probst", location: nil, lecture: {lecture_day: nil, lecture_time: nil}},

	{course: ["Comp", 498], professor: "Charalambos Poullis", location: "H 625 SGW", lecture: {lecture_day: "Fr", lecture_time: "5:45PM - 8:15PM"}, lab: ["Fr 8:30PM - 10:20PM"]},

	{course: ["Soen", 228], professor: "Tadeusz Obuchowicz", location: "MB S2.330 SGW", lecture: {lecture_day: "Tu", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Tu 8:30PM - 10:10PM"], lab: ["Tu 8:30PM - 10:10PM", "Tu 10:00AM - 12:00PM", "Mo 10:00AM - 12:00PM", "We 10:00AM - 12:00PM", "We 6:00PM - 8:00PM"]},

	{course: ["Soen", 228], professor: "Donald Peter Davis", location: "MB S2.210 SGW", lecture: {lecture_day: "MoWe", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["We 4:15PM - 5:55PM"], lab: ["Tu 10:00AM - 12:00PM", "We 10:00AM - 12:00PM", "We 6:00PM - 8:00PM", "Mo 4:15PM - 6:15PM"]},

	{course: ["Soen", 287], professor: "Nancy Acemian", location: "H 967 SGW", lecture: {lecture_day: "TuTh", lecture_time: "8:45AM - 10:00AM"}, tutorial: ["Tu 10:15AM - 11:55AM", "Th 10:15AM - 11:55AM"]},

	{course: ["Soen", 287], professor: "Javad Sadri", location: "H 920 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Tu 4:15PM - 5:55PM", "Th 4:15PM - 5:55PM"]},

	{course: ["Soen", 287], professor: "Yuhong Yan", location: "FG B040 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Fr 3:15PM - 4:55PM", "Tu 4:15PM - 5:55PM"]},

	{course: ["Soen", 331], professor: "Constantinos Constantinides", location: "FG C080 SGW", lecture: {lecture_day: "TuTh", lecture_time: "4:15PM - 5:30PM"}, tutorial: ["Fr 2:15PM - 4:05PM"]},

	{course: ["Soen", 331], professor: "Olga Ormandjieva", location: "H 420 SGW", lecture: {lecture_day: "TuTh", lecture_time: "4:15PM - 5:30PM"}, tutorial: ["Fr 2:15PM - 4:05PM"]},

	{course: ["Soen", 341], professor: "Weiyi Shang", location: "MB S2.210 SGW", lecture: {lecture_day: "WeFr", lecture_time: "8:45AM - 10:00AM"}, tutorial: ["Fr 12:15PM - 1:05PM", "Fr 1:15PM - 2:05PM", "Fr 2:15PM - 3:05PM"]},

	{course: ["Soen", 344], professor: "Constantinos Constantinides", location: "H 407 SGW", lecture: {lecture_day: "TuTh", lecture_time: "1:15PM - 2:30PM"}, tutorial: ["Th 2:45PM - 3:35PM"]},

	{course: ["Soen", 345], professor: "Daniel Sinnig", location: "H 620 SGW", lecture: {lecture_day: "MoWe", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["We 4:15PM - 5:05PM", "We 5:45PM - 6:35PM"]},

	{course: ["Soen", 357], professor: "Rajagopalan Jayakumar", location: "FG C070 SGW", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}, tutorial: ["Fr 11:45AM - 12:35PM"]},

	{course: ["Soen", 385], professor: "Javad Sadri", location: "FG B050 SGW", lecture: {lecture_day: "TuTh", lecture_time: "11:45AM - 1:00PM"}, tutorial: ["Tu 10:45AM - 11:35AM", "Th 10:45AM - 11:35AM", "Mo 10:45AM - 11:35AM"]},

	{course: ["Soen", 390], professor: "Nikolaos Tsantalis", location: "H 431 SGW", lecture: {lecture_day: "Mo", lecture_time: "4:15PM - 5:55PM"}, tutorial: ["Mo 6:15PM - 7:05PM"], lab: ["Th 3:45PM - 6:25PM", "Tu 3:45PM - 6:25PM"]},

	{course: ["Soen", 487], professor: "Yuhong Yan", location: "FG B055 SGW", lecture: {lecture_day: "We", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["We 4:15PM - 5:05PM"], lab: ["We 8:30PM - 10:20PM"]},



	{course: ["Engr", 201], professor: "ARTUR DE MATOS ALVES", location: "Online", lecture: {lecture_day: nil, lecture_time: nil}, tutorial: ["Fr 8:45AM - 9:35AM", "Tu 4:15PM - 5:05PM", "We 8:45AM - 9:35AM", "Th 4:15PM - 5:05PM", "Tu 4:15PM - 5:05PM"]},

	{course: ["Engr", 202], professor: "John Hadjinicolaou", location: "H 937 SGW", lecture: {lecture_day: "Th", lecture_time: "4:15PM - 5:30PM"}},

	{course: ["Engr", 202], professor: "Rahim Tadayon", location: "H 110 SGW", lecture: {lecture_day: "We", lecture_time: "5:45PM - 7:00PM"}},

	{course: ["Engr", 213], professor: "Nataliia Rossokhata", location: "H 937 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Mo 6:00PM - 7:40PM", "Fr 5:45PM - 7:25PM", "Mo 4:10PM - 5:50PM", "Mo 6:00PM - 7:40PM", "Fr 3:45PM - 5:25PM"]},

	{course: ["Engr", 213], professor: "Venkatanarayana Ramachandran", location: "H 553 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Mo 4:10PM - 5:50PM", "Fr 5:45PM - 7:25PM"]},

	{course: ["Engr", 213], professor: "Dmitry Korotkin", location: "FG B060 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Fr 3:45PM - 5:25PM"]},


	{course: ["Engr", 233], professor: "Dmitry Korotkin", location: "H 531 SGW", lecture: {lecture_day: "MoWe", lecture_time: "4:15PM - 5:30PM"}, tutorial: ["Mo 5:45PM - 7:25PM", "Mo 7:40PM - 9:20PM", "Mo 1:15PM - 3:05PM"]},

	{course: ["Engr", 233], professor: "Alexander Shnirelman", location: "H 411 SGW", lecture: {lecture_day: "TuTh", lecture_time: "11:45AM - 1:00PM"}, tutorial: ["Fr 2:15PM - 3:55PM"]},

	{course: ["Engr", 233], professor: "Dimiter Dryanov", location: "H 435 SGW", lecture: {lecture_day: "WeFr", lecture_time: "8:45AM - 10:00AM"}, tutorial: ["Mo 8:20AM - 10:00AM", "We 1:15PM - 2:55PM"]},

	{course: ["Engr", 233], professor: "Iman Gohar", location: "MB S2.330 SGW", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}, tutorial: ["Th 9:45AM - 11:25AM"]},

	{course: ["Engr", 233], professor: "Alexander Shnirelman", location: "H 553 SGW", lecture: {lecture_day: "TuTh", lecture_time: "8:45AM - 10:00AM"}, tutorial: ["Mo 9:45AM - 11:25AM", "Mo 1:15PM - 2:55PM"]},

	{course: ["Engr", 233], professor: "ALI NAZEMI", location: "FG B060 SGW", lecture: {lecture_day: "TuTh", lecture_time: "8:45AM - 10:00AM"}, tutorial: ["Mo 8:20AM - 10:00AM"]},

	{course: ["Engr", 233], professor: "Nataliia Rossokhata", location: "MB S2.210 SGW", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}, tutorial: ["Fr 2:15PM - 3:55PM"]},

	{course: ["Engr", 301], professor: "Mohammed Mawlana", location: "H 553 SGW", lecture: {lecture_day: "TuTh", lecture_time: "4:15PM - 5:30PM"}, tutorial: ["Tu 5:45PM - 6:35PM", "Th 6:45PM - 7:35PM"]},

	{course: ["Engr", 301], professor: "Gerard Gouw", location: "H 553 SGW", lecture: {lecture_day: "Mo", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Th 5:45PM - 6:35PM", "Tu 6:45PM - 7:35PM"]},

	{course: ["Engr", 371], professor: "Ketra Schmitt", location: "FG C080 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Fr 10:15AM - 11:05AM"]},

	{course: ["Engr", 371], professor: "STEVE SHIH", location: "H 507 SGW", lecture: {lecture_day: "Fr", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Fr 2:45PM - 3:35PM", "Mo 2:45PM - 3:35PM"]},

	{course: ["Engr", 371], professor: "Dongyu Qiu", location: "H 920 SGW", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}, tutorial: ["We 8:45AM - 9:35AM", "Fr 8:45AM - 9:35AM"]},

	{course: ["Engr", 391], professor: "Charles Kiyanda", location: "H 531 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}, tutorial: ["Th 8:30PM - 9:20PM"]},

	{course: ["Engr", 391], professor: "Rahim Tadayon", location: "H 415 SGW", lecture: {lecture_day: "TuTh", lecture_time: "1:15PM - 2:30PM"}, tutorial: ["Fr 11:45AM - 12:35PM", "Fr 1:15PM - 2:05PM"]},

	{course: ["Engr", 391], professor: "Rolf Wuthrich", location: "H 535 SGW", lecture: {lecture_day: "WeFr", lecture_time: "8:45AM - 10:00AM"}, tutorial: ["Th 1:15PM - 2:05PM", "Th 3:15PM - 4:05PM"]},

	{course: ["Engr", 392], professor: "Ketra Schmitt", location: "H 407 SGW", lecture: {lecture_day: "Fr", lecture_time: "8:45AM - 11:30AM"}},

	{course: ["Engr", 392], professor: "ARTUR DE MATOS ALVES", location: "H 420 SGW", lecture: {lecture_day: "MoWe", lecture_time: "4:15PM - 5:30PM"}},

	{course: ["Engr", 392], professor: "ARTUR DE MATOS ALVES", location: "FG B030 SGW", lecture: {lecture_day: "Tu", lecture_time: "5:45PM - 8:15PM"}},

	{course: ["Encs", 282], professor: "Bruno Grenier", location: "FG B060 SGW", lecture: {lecture_day: "Tu", lecture_time: " 5:45PM - 8:15PM"}, tutorial: ["Mo 4:15PM - 5:55PM", "Th 4:15PM - 5:55PM", "Fr 4:15PM - 5:55PM", "Tu 8:30PM - 10:10PM"]},

	{course: ["Encs", 282], professor: "Laurie Lamoureux Scholes", location: "MB S2.210 SGW", lecture: {lecture_day: "Tu", lecture_time: "2:45PM - 5:30PM"}, tutorial: ["Th 2:45PM - 4:25PM", "Mo 5:45PM - 7:25PM", "Tu 5:45PM - 8:15PM", "Tu 8:30PM - 10:10PM", "Fr 5:55PM - 7:35PM", "Th 5:55PM - 7:35PM"]},

	{course: ["Encs", 282], professor: "Brandiff Caron", location: "H 507 SGW", lecture: {lecture_day: "TuTh", lecture_time: "2:45PM - 4:00PM"}, tutorial: ["Fr 4:15PM - 5:55PM", "Tu 4:15PM - 5:55PM", "Mo 4:15PM - 5:55PM"]},

	{course: ["Encs", 393], professor: "Brandiff Caron", location: "FG B030 SGW", lecture: {lecture_day: "Th", lecture_time: "5:45PM - 8:15PM"}},

	{course: ["Biol", 206], professor: "Aida Abu-Baker", location: "MB S2.330 SGW", lecture: {lecture_day: "MoWe", lecture_time: "11:45AM - 1:00PM"}},

	{course: ["Biol", 226], professor: "Donald Gray Stirling", location: "SP S110 LOY", lecture: {lecture_day: "TuTh", lecture_time: "8:45AM - 10:00AM"}},

	{course: ["Biol", 261], professor: "Malcolm Whiteway", location: "SP S110 LOY", lecture: {lecture_day: "WeFr", lecture_time: "11:45AM - 1:00PM"}, tutorial: ["Tu 1:30PM - 3:30PM", "Tu 3:30PM - 5:30PM", "We 1:30PM - 3:30PM", "We 3:30PM - 5:30PM", "Th 1:30PM - 3:30PM", "Th 3:30PM - 5:30PM", ""]},

	{course: ["Chem", 209], professor: "Lena Sahlman", location: "MB S1.115 SGW", lecture: {lecture_day: "Tu", lecture_time: "6:00PM - 8:15PM"}},

	{course: ["Chem", 221], professor: "Jung Oh", location: "CC 310 LOY", lecture: {lecture_day: "TuTh", lecture_time: "10:15AM - 11:30AM"}, lab: ["Mo 1:30PM - 5:30PM", "We 1:30PM - 5:30PM", "Th 1:30PM - 5:30PM", "Fr 9:00AM - 1:00PM", "Mo 9:00AM - 1:00PM", "Tu 6:30PM - 10:30PM"]},

	{course: ["Chem", 221], professor: "Joanne Krupa", location: "CC 321 LOY", lecture: {lecture_day: "Th", lecture_time: "6:00PM - 8:30PM"}, lab: [nil]},

	{course: ["Chem", 234], professor: "Guillaume Lamoureux", location: "CC 320 LOY", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}},

	{course: ["Geol", 208], professor: "Alena Perout", location: "H 937 SGW", lecture: {lecture_day: "We", lecture_time: "6:00PM - 8:15PM"}},

	{course: ["Phys", 252], professor: "Valter Zazubovits", location: "CC 112 LOY", lecture: {lecture_day: "TuTh", lecture_time: "10:15AM - 11:30AM"}},

	{course: ["Phys", 354], professor: "Joseph Shin", location: "CJ 1.129 LOY", lecture: {lecture_day: "TuTh", lecture_time: "10:15AM - 11:30AM"}},

	{course: ["Mast", 218], professor: "Pawel Gora", location: "MB S2.210 SGW", lecture: {lecture_day: "We", lecture_time: "6:00PM - 8:15PM"}},

	{course: ["Mast", 219], professor: "Richard Hall", location: "H 407 SGW", lecture: {lecture_day: "Th", lecture_time: "6:00PM - 8:15PM"}},

	{course: ["Mast", 224], professor: "", location: "", lecture: {lecture_day: "", lecture_time: ""}, tutorial: [""]},

	{course: ["Mast", 234], professor: "Armen Atoyan", location: "LB 915-4 SGW", lecture: {lecture_day: "TuTh", lecture_time: "10:15AM - 11:30AM"}},

	{course: ["Mast", 235], professor: "Armen Atoyan", location: "LB 915-4 SGW", lecture: {lecture_day: "WeFr", lecture_time: "10:15AM - 11:30AM"}},

	{course: ["Mast", 392], professor: "", location: "", lecture: {lecture_day: "", lecture_time: ""}, tutorial: [""]},




]

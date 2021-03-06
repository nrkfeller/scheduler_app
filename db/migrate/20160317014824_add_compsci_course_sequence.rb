class AddCompsciCourseSequence < ActiveRecord::Migration

  Compsci_core = [
  ["Comp", 228],
  ["Comp", 232],
  ["Comp", 233],
  ["Comp", 248],
  ["Comp", 249],
  ["Comp", 335],
  ["Comp", 346],
  ["Comp", 348],
  ["Comp", 352],
  ["Comp", 354],
  ["Encs", 282],
  ["Encs", 393]
  ]

  Math_elec = [
  ["Comp", 339],
  ["Comp", 361],
  ["Comp", 367],
  ["Engr", 213],
  ["Engr", 233],
  ["Mast", 218],
  ["Mast", 219],
  ["Mast", 224],
  ["Mast", 234],
  ["Mast", 235],
  ["Mast", 392]
  ]

  Compsci_games = [
  ["Comp", 345],
  ["Comp", 353],
  ["Comp", 371],
  ["Comp", 376],
  ["Comp", 472],
  ["Comp", 476],
  ["Comp", 477]
  ]


  Compsci_web = [
  ["Comp", 353],
  ["Comp", 445],
  ["Comp", 479],
  ["Soen", 287],
  ["Soen", 387],
  ["Soen", 423],
  ["Soen", 487]
  ]

  Compsci_system_elective = [
  ["Comp", 326],
  ["Comp", 345],
  ["Comp", 426],
  ["Comp", 428],
  ["Comp", 445],
  ["Soen", 422],
  ["Soen", 423]
  ]

  Compsci_system_core = [
  ["Comp", 326],
  ["Comp", 353],
  ["Comp", 361],
  ["Comp", 445],
  ["Comp", 465]
  ]

  def change

    CourseDatum.create(name: "Mast", num: 392, title: "Elementary Number Theory", credit: 3)
    Compsci_core.each do |course|
      ComputerScience.create(course_id: CourseDatum.where(name: course[0], num: course[1]).last.id, course_group: "Computer Science Core")
    end
    Math_elec.each do |course|
      ComputerScience.create(course_id: CourseDatum.where(name: course[0], num: course[1]).last.id, course_group: "Math Electives")
    end
    Compsci_games.each do |course|
      ComputerScience.create(course_id: CourseDatum.where(name: course[0], num: course[1]).last.id, course_group: "Game Option")
    end
    Compsci_system_core.each do |course|
      ComputerScience.create(course_id: CourseDatum.where(name: course[0], num: course[1]).last.id, course_group: "Computer Science System Core")
    end
    Compsci_system_elective.each do |course|
      ComputerScience.create(course_id: CourseDatum.where(name: course[0], num: course[1]).last.id, course_group: "Computer Science System Electives")
    end





  end
end

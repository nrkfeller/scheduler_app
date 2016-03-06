class AddCourseToDatabase3 < ActiveRecord::Migration

  SOEN = [
    [390, "Software Engineering Team Design Project", 3, "SOEN 344; SOEN 357"],
    [490, "Capstone Software Engineering Design Project", 4, "SOEN 390"]
  ]
  def change
    SOEN.each do |soen|
      CourseDatum.create(name: 'Soen', num: soen[0], title: soen[1], credit: soen[2], prereg: soen[3])
    end
  end
end

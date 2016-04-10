class AddJinStudentRecord < ActiveRecord::Migration
  def change
    comp = [232, 248, 249, 335, 352]
    soen = [228, 287, 331, 341]
    engr = [201, 202, 213, 233, 301]
    biol = [206, 208, 226, 261]
  
    jin = Student.find_by_student_id("11111111")
    
    comp.each do |course_num|
      course_id = CourseDatum.where(name: "Comp", num: course_num).last.id
      StudentRecord.create(student_id: jin.id, course_id: course_id, year: 2014, semester: "FALL", grade: "A+", status: "PASS")
    end
    soen.each do |course_num|
      course_id = CourseDatum.where(name: "Soen", num: course_num).last.id
      StudentRecord.create(student_id: jin.id, course_id: course_id, year: 2014, semester: "WINTER", grade: "A", status: "PASS")
    end
    engr.each do |course_num|
      course_id = CourseDatum.where(name: "Engr", num: course_num).last.id
      StudentRecord.create(student_id: jin.id, course_id: course_id, year: 2015, semester: "FALL", grade: "A+", status: "PASS")
    end
    biol.each do |course_num|
      course_id = CourseDatum.where(name: "Biol", num: course_num).last.id
      StudentRecord.create(student_id: jin.id, course_id: course_id, year: 2015, semester: "WINTER", grade: "B+", status: "PASS")
    end
  end
end

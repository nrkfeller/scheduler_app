class AddNickStudentRecord < ActiveRecord::Migration
  def change
    comp = [232, 248, 249, 335, 346, 348, 352]
    soen = [228, 287, 331, 341]
    engr = [201, 202]
    phys = [252, 253, 273, 334, 354]
  
    nick = Student.find_by_student_id("22222222")
    
    comp.each do |course_num|
      course_id = CourseDatum.where(name: "Comp", num: course_num).last.id
      StudentRecord.create(student_id: nick.id, course_id: course_id, year: 2014, semester: "FALL", grade: "A", status: "PASS")
    end
    soen.each do |course_num|
      course_id = CourseDatum.where(name: "Soen", num: course_num).last.id
      StudentRecord.create(student_id: nick.id, course_id: course_id, year: 2014, semester: "WINTER", grade: "B", status: "PASS")
    end
    engr.each do |course_num|
      course_id = CourseDatum.where(name: "Engr", num: course_num).last.id
      StudentRecord.create(student_id: nick.id, course_id: course_id, year: 2015, semester: "FALL", grade: "A+", status: "PASS")
    end
    phys.each do |course_num|
      course_id = CourseDatum.where(name: "Phys", num: course_num).last.id
      StudentRecord.create(student_id: nick.id, course_id: course_id, year: 2015, semester: "WINTER", grade: "A", status: "PASS")
    end
  end
end

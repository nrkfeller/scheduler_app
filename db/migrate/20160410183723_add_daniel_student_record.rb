class AddDanielStudentRecord < ActiveRecord::Migration
  def change
    comp1 = [228,232,233,248]
    comp2 = [249,335,346,348,352, 354]
    comp3 = [339, 345, 353, 371, 376]
    encs = [282, 393]
    mast = [218, 219, 224]

    daniel = Student.find_by_student_id("44444444")

    comp1.each do |course_num|
      course_id = CourseDatum.where(name: "Comp", num: course_num).last.id
      StudentRecord.create(student_id: daniel.id, course_id: course_id, year: 2014, semester: "FALL", grade: "A", status: "PASS")
    end
    
    comp2.each do |course_num|
      course_id = CourseDatum.where(name: "Comp", num: course_num).last.id
      StudentRecord.create(student_id: daniel.id, course_id: course_id, year: 2014, semester: "Winter", grade: "A-", status: "PASS")
    end
  
    comp3.each do |course_num|
      course_id = CourseDatum.where(name: "Comp", num: course_num).last.id
      StudentRecord.create(student_id: daniel.id, course_id: course_id, year: 2015, semester: "FALL", grade: "A-", status: "PASS")
    end

    encs.each do |course_num|
      course_id = CourseDatum.where(name: "Encs", num: course_num).last.id
      StudentRecord.create(student_id: daniel.id, course_id: course_id, year: 2015, semester: "Winter", grade: "A+", status: "PASS")
    end
    
    mast.each do |course_num|
      course_id = CourseDatum.where(name: "Mast", num: course_num).last.id
      StudentRecord.create(student_id: daniel.id, course_id: course_id, year: 2015, semester: "Winter", grade: "A+", status: "PASS")
    end
  end
end

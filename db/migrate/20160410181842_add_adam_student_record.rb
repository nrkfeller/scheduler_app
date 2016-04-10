class AddAdamStudentRecord < ActiveRecord::Migration
  def change
    comp = [228,232,233,248,249,335,346,348,352]
    engr = [213, 233]
    encs = [282, 393]
    mast = [218, 219, 224]

    adam = Student.find_by_student_id("33333333")

    comp.each do |course_num|
      course_id = CourseDatum.where(name: "Comp", num: course_num).last.id
      StudentRecord.create(student_id: adam.id, course_id: course_id, year: 2014, semester: "FALL", grade: "A", status: "PASS")
    end
    engr.each do |course_num|
      course_id = CourseDatum.where(name: "Engr", num: course_num).last.id
      StudentRecord.create(student_id: adam.id, course_id: course_id, year: 2014, semester: "Winter", grade: "A", status: "PASS")
    end
    encs.each do |course_num|
      course_id = CourseDatum.where(name: "Encs", num: course_num).last.id
      StudentRecord.create(student_id: adam.id, course_id: course_id, year: 2015, semester: "FALL", grade: "A+", status: "PASS")
    end
    mast.each do |course_num|
      course_id = CourseDatum.where(name: "Mast", num: course_num).last.id
      StudentRecord.create(student_id: adam.id, course_id: course_id, year: 2015, semester: "Winter", grade: "A+", status: "PASS")
    end
  end
end

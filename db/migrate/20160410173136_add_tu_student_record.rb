class AddTuStudentRecord < ActiveRecord::Migration
  def change
    comp = [228,232,233,248,249,335,346,348,352,339,361,326,345]
    engr = [213, 233]
    mast = [218,219,224,234,235,392]

    tu = Student.find_by_student_id("12345678")

    comp.each do |course_num|
      course_id = CourseDatum.where(name: "Comp", num: course_num).last.id
      StudentRecord.create(student_id: tu.id, course_id: course_id, year: 2014, semester: "FALL", grade: "A+", status: "PASS")
    end
    engr.each do |course_num|
      course_id = CourseDatum.where(name: "Engr", num: course_num).last.id
      StudentRecord.create(student_id: tu.id, course_id: course_id, year: 2014, semester: "Winter", grade: "A+", status: "PASS")
    end
    mast.each do |course_num|
      course_id = CourseDatum.where(name: "Mast", num: course_num).last.id
      StudentRecord.create(student_id: tu.id, course_id: course_id, year: 2015, semester: "FALL", grade: "A+", status: "PASS")
    end
  end
end

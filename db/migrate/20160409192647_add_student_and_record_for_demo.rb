class AddStudentAndRecordForDemo < ActiveRecord::Migration

  def change
    tu = {first_name: "Tu", last_name: "Nguyen", student_id: "12345678", email: "tu@concordia.ca", department: "Computer Science", password: "manhtu123", password_confirmation: "manhtu123"}
    jin = {first_name: "Jinbee", last_name: "Ahn", student_id: "11111111", email: "jin@concordia.ca", department: "Software Engineering", password: "jinbee123", password_confirmation: "jinbee123"}
    nick = {first_name: "Nicolas", last_name: "Feller", student_id: "22222222", email: "nick@concordia.ca", department: "Software Engineering", password: "nrkfeller123", password_confirmation: "nrkfeller123"}
    adam = {first_name: "Adam", last_name: "Ibrahim", student_id: "33333333", email: "adam@concordia.ca", department: "Computer Science", password: "adamibraham123", password_confirmation: "adamibraham123"}
    daniel = {first_name: "Daniel", last_name: "MakarDich", student_id: "44444444", email: "daniel@concordia.ca", department: "Computer Science", password: "daniel123", password_confirmation: "daniel123"}

    list_of_student = [tu, jin, nick, adam, daniel]
    list_of_student.each { |person| Student.create(person)}
  end
end

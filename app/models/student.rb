class Student < ActiveRecord::Base
  has_secure_password

  PROGRAM = ['Computer Engineering', 'Electrical Engineering', 'Computer Science', 'Software Engineering']
  VALID_STUDENT_ID_REGEX = /\A\d{8}\z/
  VALID_EMAIL_REGEX = /\A\w+@concordia.ca\z/
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :student_id, format: {with: VALID_STUDENT_ID_REGEX}, uniqueness: true, presence: true
  validates :department, presence: true, inclusion: {in: PROGRAM}
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
  validates :password, presence: true, length: {minimum: 8}
  validates :password_confirmation, presence: true


  def self.departments
    return PROGRAM
  end
end

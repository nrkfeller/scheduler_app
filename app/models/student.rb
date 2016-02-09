class Student < ActiveRecord::Base
  has_secure_password

  before_save { |student| student.email = email.downcase}
  before_save :create_remember_token

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

  
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
    
    def full_name
      "#{first_name} #{last_name}"
    end
end

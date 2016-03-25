class StudentRecord < ActiveRecord::Base
  belongs_to :students
  before_validation :format_fields

  VALIDATE_YEAR_REGEX = /\A\d{4}\z/
  VALIDATE_SEMESTER = ["FALL", "WINTER", "SUMMER"]
  VALIDATE_GRADE = ["A+", "A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F", " "]
  VALIDATE_STATUS = ["PASS", "FAIL"]

  validates :course_id, presence: true
  validates :year, presence: true, format: {with: VALIDATE_YEAR_REGEX}
  validates :semester, presence: true, inclusion: {in: VALIDATE_SEMESTER}
  validates :grade, presence: true, inclusion: {in: VALIDATE_GRADE}
  validates :status, presence: true, inclusion: {in: VALIDATE_STATUS}

  def get_record
    course = CourseDatum.find_by_id(self.course_id);
    return {year: self.year, semester: self.semester, course_name: course.name,course_number: course.num, course_title: course.title, grade: self.grade, status: self.status }
  end

  def pass?
    return ((self.status == "FAIL") ? false : true)
  end
  private
    def format_fields
      self.semester = self.semester.upcase
      self.grade = self.grade.upcase
      self.status = self.status.upcase
    end
end

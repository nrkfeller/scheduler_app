class CourseDatum < ActiveRecord::Base
  COURSE_TYPE = ["Soen", "Comp", "Engr", "Encs"]
  COURSE_NAME = /\w{4}/
  COURSE_NUM = /\d{3}/
  validates :name, format: {with: COURSE_NAME}, presence: true
  validates :num, format: {with: COURSE_NUM}, presence: true
  validates :title, presence: true
  validates :credit, presence: true

  def get_prereg
    if !prereg.nil? && !prereg.empty? # if has prereg
      list = []
      prerequisites = prereg.split(';')
      prerequisites.each do |pre|
        if (pre.include?("or"))
          sub_pres = pre.split("or")
          sub_list = []
          sub_pres.each do |sub_pre|
            course = get_course(sub_pre)
            sub_list.push(course) unless course.nil?
          end
          list.push(sub_list) unless sub_list.empty?
        else
          course = get_course(pre)
          list.push(course) unless course.nil?
        end
      end
      return list unless list.empty?
    end
    return nil
  end



  private
    def table_exist?(table_name)
      return COURSE_TYPE.include?(table_name.camelize)
    end

    def get_course(pre)
      course_name = /\w{4}/.match(pre)[0].camelize
      course_number = /\d{3}/.match(pre)[0].to_i
      if table_exist?(course_name)
        table_name = eval(course_name)
        course = table_name.find_by_num(course_number)
        return course
      end
      return nil
    end
end

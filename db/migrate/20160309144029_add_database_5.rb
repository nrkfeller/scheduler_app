class AddDatabase5 < ActiveRecord::Migration

  Extra = [
    ["Encs", 393, "Social and Ethical Dimensions of Information and Communication Technologies", 3, "Encs 282"],
    ["Mast", 218, "Multivariable Calculus I", 3],
    ["Mast", 219, "Multivariable Calculus II", 3],
    ["Mast", 224, "Introduction to Optimization",3],
    ["Mast", 232, "Mathematics with Computer Algebra", 3],
    ["Mast", 234, "Linear Algebra and Applications I", 3],
    ["Mast", 235, "Linear Algebra and Applications II", 3],
    ["Mast", 331, "Mathematical Modelling", 3],
    ["Mast", 333, "Applied Statistics", 3]
  ]
  def change
    Extra.each do |course|
      CourseDatum.create(name: course[0], num: course[1], title: course[2], credit: course[3], prereg: course[4])
    end
  end
end

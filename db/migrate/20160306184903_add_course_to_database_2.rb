class AddCourseToDatabase2 < ActiveRecord::Migration

  SCIENCE = [
    ["BIOL", 206,"Elementary Genetics", 3 ],
    ["BIOL", 208, "Environmental Biology", 3],
    ["BIOL", 226, "Biodiversity and Ecology", 3],
    ["BIOL", 261, "Molecular and General Genetics", 3],
    ["CHEM", 209, "Discovering Biotechnology", 3],
    ["CHEM", 217, "Introductory Analytical Chemistry I", 3],
    ["CHEM", 221, "Introductory Organic Chemistry I", 3],
    ["CHEM", 234, "Physical Chemistry I: Thermodynamics", 3],
    ["GEOL", 206, "Earthquakes, Drifting Continents and Volcanoes", 3],
    ["GEOL", 208, "The Earth, Moon and the Planets", 3],
    ["PHYS", 252, "Optics", 3],
    ["PHYS", 253, "Electricity and Magnetism I", 3],
    ["PHYS", 273, "Energy and Environment", 3],
    ["PHYS", 334, "Thermodynamics", 3],
    ["PHYS", 354, "Electricity and Magnetism II", 3],
    ["PHYS", 384, "Introduction to Astronomy", 3],
    ["PHYS", 385, "Astrophysics", 3]
  ]

  ENGR = [
    [201, "Professional Practice and Responsibility", 1.5],
    [202, "Sustainable Development and Environmental Stewardship", 1.5],
    [301, "Engineering Management Principles and Economics", 3],
    [392, "Impact of Technology on Society", 3]
  ]

  def change
    SCIENCE.each do |course|
      CourseDatum.create(name: course[0].downcase.camelize, num: course[1], title: course[2], credit: course[3])
    end
    ENGR.each do |engr|
      CourseDatum.create(name: 'Engr', num: engr[0], title: engr[1], credit: engr[2])
    end

  end
end

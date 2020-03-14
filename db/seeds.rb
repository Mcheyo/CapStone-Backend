# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'byebug'
Skill.destroy_all 
platforms = [
    "Website", 
    "Mobile App", 
    "Native App"
]
platforms.each do |platform|
    

    Skill.create(name: platform, category:"Platform")
end

languages=[
    "JavaScript", 
    "Ruby", 
    "Ruby on Rails", 
    "React", 
    "Redux"
]

languages.each do |language|
    Skill.find_or_create_by(name: language, category:"Language")
end 
categories = [
    "Health", 
    "Social", 
    "Finance"
]

categories.each do |catergory|
    Skill.find_or_create_by(name: catergory, category:"Field")
end 



# u1 = User.find_or_create_by(name: "Tester2", bio: "Seeding data")
# u2 = User.find_or_create_by(name:"Tester3", bio: "Seeding data")
# developer_test = UserSkill.find_or_create_by(skill_id: 2, developer_id: u1 )
# client_test = Proposal.find_or_create_by(client: u2, idea: "Lets make googlessss")

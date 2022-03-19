# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(birthdate: "2001-01-01", patient_number: "ABC123")
category = Category.create(name: "phq_screener")
['Little interest or pleasure in doing things?', 'Feeling down, depressed or hopeless?'].each do |title|
  Question.create(title: title, category_id: category.id)
end


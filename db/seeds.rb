# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Admin.find_or_create_by(first_name: 'admin', last_name: 'admin', email: 'admin@mail.lan')
admin.password = 'admin'
admin.save

60.times do |i|
  u = [Manager, Developer].sample.new
  u.email = "email#{i}@mail.lan"
  u.first_name = "FN#{i}"
  u.last_name = "LN#{i}"
  u.password = "#{i}"
  u.save
end

author = Manager.first

30.times do |i|
   t = Task.new()
   t.author = author
   t.name = "Task #{i}"
   t.description = "Description #{i}"
   t.save
end

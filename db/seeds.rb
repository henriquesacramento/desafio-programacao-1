user = User.new
user.email = 'example@example.org'
user.username = 'user_example'
user.password = '12345678'
user.password_confirmation = '12345678'
user.name = 'John'
user.last_name = 'Doe'

if user.save
	puts "~~> Example user created"
end
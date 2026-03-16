user = User.new
user.email = 'admin@admin.com'
user.password = 'password'
user.password_confirmation = 'password'
user.save!

char = Character.new
char.name = 'jeff'
char.user_id = 1
char.save!
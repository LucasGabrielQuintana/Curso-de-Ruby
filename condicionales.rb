# Condicionales

is_Authenticated = false

role = :user

if is_Authenticated
    puts "Pantalla de Admin"
else
    puts "Pantalla de Login"
end

if role == :admin 
    puts "Pantalla de Admin"
elsif role == :superadmin
    puts "Pantalla de Admin"
else
    puts "Pantalla de login"
end




# Ciclos

x = 1

while x < 5 do
    puts "Hola while #{x}"
    x += 1
end

y = 1

loop do
    puts "Hola loop #{y}"
    break if y >= 5
    y += 1
end


for i in 1..10 do
    puts "Hola con for #{i}"
end

[1,2,3,4].each { |z| puts "hola array #{z}"}
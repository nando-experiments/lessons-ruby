# Estrutura de decisão :)

puts "==="

puts "Digite seu nome"
nome = gets.chomp

puts "==="

puts "Digite seu Sexo (M ou F)"
sexo = gets.chomp.upcase

puts "==="
puts "Seu nome é: " + nome

if sexo == "M"
  puts "Sexo: Masculino."
elsif sexo == "F"
  puts "Sexo: Feminino."
else
  puts "Não foi possível verificar!"
end

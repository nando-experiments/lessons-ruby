# loop while

puts "==="

puts "Digite seu nome"
nome = gets.chomp

puts "==="

puts "Digite seu Sexo (M ou F)"
sexo = gets.chomp.upcase

# se o que for digitado for diferente de F ou M
# o loop vai continuar perguntando o sexo :P
while sexo != "M" && sexo != "F"
    puts "Digite seu Sexo (M ou F)"
    sexo = gets.chomp.upcase
end

puts "==="
puts "Seu nome é: " + nome

if sexo == "M"
  puts "Sexo: Masculino."
elsif sexo == "F"
  puts "Sexo: Feminino."
end

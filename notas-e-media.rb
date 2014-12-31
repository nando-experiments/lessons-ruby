puts "=============================================="
puts "=== Bem vindo ao sistema de notas do aluno ==="
puts "=============================================="

puts "==="

puts "Digite o nome do Aluno:"
nome = gets.chomp

puts "==="

puts "Digite a nota do primeiro bimestre:"
nota1 = gets.chomp.to_f

puts "==="

puts "Digite a nota do segundo bimestre:"
nota2 = gets.chomp.to_f

puts "==="

puts "Digite a nota do terceiro bimestre:"
nota3 = gets.chomp.to_f

puts "==="

puts "Digite a nota do quarto bimestre:"
nota4 = gets.chomp.to_f

puts "==="

soma  = (nota1 + nota2 + nota3 + nota4)
media = soma / 4

puts "Sua media foi: " + media.to_s
puts "==="

if (media < 7)
    puts "O Aluno " + nome + " foi Reprovado!"
else
    puts "O Aluno " + nome + " foi Aprovado!"
end

puts "==="
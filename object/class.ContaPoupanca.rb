
# Classe ContaPoupanca
class ContaPoupanca

    def initialize
        @saldo = 0.0
    end

    def sacar valor
        if @saldo >= valor
            @saldo = @saldo - valor
        end
        puts "Você sacou R$" + valor.to_s
    end

    def depositar valor
        @saldo = @saldo + valor
        puts "Você depositou R$" + valor.to_s
    end

    def saldo
        @saldo
    end

end

# instanciamos a classe
conta = ContaPoupanca.new

# o Saldo inicial é zero (0.0)
puts "O seu saldo é: R$" + conta.saldo.to_s

# depositamos 200
conta.depositar 200

# o saldo é de 200
puts "O seu saldo é: R$" + conta.saldo.to_s

# saquei 22
conta.sacar 22

# o saldo é de 178
puts "O seu saldo é: R$" + conta.saldo.to_s
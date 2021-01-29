class Usuario
    def initialize(nombre, *cuentas)
      @nombre = nombre
      @cuentas = cuentas
    end

    def saldo_total
        saldo_t = @cuentas.inject{|sum, cuenta| sum + cuenta.saldo}
    end
end


class CuentaBancaria
    attr_accessor :saldo
    def initialize(banco, cuenta, saldo = 0) 
      @banco = banco
      @cuenta = cuenta
      @saldo = saldo
    end

    def transferir(monto, cuenta_destino, cuenta_procedencia) 
        @saldo = @saldo - monto
        cuenta_destino.saldo = cuenta_destino.saldo + monto
    end
end

c1 = CuentaBancaria.new('santande', '123-4567', 5000)
c2 = CuentaBancaria.new('Estado', '456-7891', 5000)

usuario1 = Usuario.new("ricardo", c1, c2)
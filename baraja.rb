require_relative 'carta'

class Baraja  
    attr_accessor :cartas
    def initialize (*cartas)
        @cartas = cartas
    end
    def crear_baraja
        pinta = ['C','D','P','T']
        deck = Array.new
        pinta.each do |i|
            13.times do |j|
                carta = Carta.new(i,j)
                deck.push(carta)
            end
        end
        @cartas = deck
         
        # deck = Array.new
        # while deck.length <= 52
        #     carta = Carta.new
        #     carta_x = [carta.numero, carta.pinta]
        #     if !deck.include?(carta_x)
        #         deck.push(carta_x)    
        #     end
        #     cartas = deck
        #     print deck
        # end
    end
    def barajar
        self.cartas.shuffle
    end

    def sacar
        self.cartas.pop
    end

    def repartir
       mano = self.cartas.pop(5)
    end
end

baraja1 = Baraja.new
baraja1.crear_baraja
baraja1.barajar
print baraja1.repartir
puts
## Ejercicio 5: Traductor entero a código Morse.

# Se tiene la clase *Morseable* que contiene un método de instancia *generate_hash* los datos de traducción de <u>número entero a código morse</u>.
#
# ~~~ruby
class Morseable
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    # Esto es una aberración y debe ser refactorizado!
    h = {'0' => '-----',
        '1' => '.----',
        '2' => '..---',
        '3' => '...--',
        '4' => '....-',
        '5' => '.....',
        '6' => '-....',
        '7' => '--...',
        '8' => '---..',
        '9' => '----.'}
        h[number.to_s]
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(8)
print m.to_morse

# Se pide:
#
# - Refactorizar el código del método de instancia *generate_hash* para que los datos estén contenidos en un *hash* donde **los números serán las claves y la traducción los valores**. El método *generate_hash* además debe retornar la traducción del número recibido como argumento.

## Ejercicio 2: Sintaxis.
# Corrige el siguiente código para instanciar el objeto y generar la salida de manera correcta.
#
# ~~~ruby
class Car
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
  end


end







car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
car2 = Car.new('Camaro', 2019)
puts "Mi auto favorito es un #{car2.model} del año #{car2.year}!"

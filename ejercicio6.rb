## Ejercicio 6: Objetos y archivos.
# Se tiene un archivo llamado *catalogo.txt* que contiene los nombres de los productos que ofrece una tienda junto con los precios de las tallas *L, M, S y XS*.

# Polera, 10990, 7990, 4990, 2990
# Jeans, 14990, 10990, 7990, 5990
# Poleron, 12990, 8990, 5990, 3990
# Chaleco, 11990, 8990, 6990, 4990
# Parka, 19990, 14990,  11990, 9990


# El siguiente código define la clase *Product* y además realiza la lectura del archivo.

class Product
  def initialize(name, *sizes)
    @name = name
    @sizes = sizes.map(&:to_i)
  end
  def average
    @sizes.inject(&:+)/@sizes.size.to_f
  end
end


file = File.open('catalogo.txt', 'r')
datos = file.readlines
file.close
products_list = []

data = []

datos.each do |prod|
  ls = prod.split(', ')
  data << ls[0]
  products_list << Product.new(*ls)
end


products_list.each do |producto|
  puts "#{producto.average}"
end



# Se pide:

# - Optimizar el código implementando el operador *splat* al momento de instanciar los productos

# - Generar un método que permita calcular el promedio de precio por producto.

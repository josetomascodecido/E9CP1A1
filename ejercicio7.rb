# ## Ejercicio 7: Objetos y archivos.
# Utilizando el mismo archivo del ejercicio anterior:
# La tienda desea generar un nuevo catálogo
# que **no incluya** el último precio correspondiente
# a cada producto debido a que ya no comercializa productos
# de talla *XS*.
# Se pide **generar un método** que reciba como argumento
# los datos del archivo *catalogo.txt* y luego imprima el
# nuevo catálogo solicitado en un archivo llamado
# *nuevo_catalogo.txt*
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
print products_list.map



products_list.each do |producto|
  puts "#{producto.average}"
end

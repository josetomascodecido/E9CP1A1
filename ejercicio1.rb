## Ejercicio 1: Sintaxis.

# - Copia el siguiente código y ejecútalo. Luego corrige los errores para poder imprimir ejecutar ambos métodos y finalmente obtener el valor de la variable de *a*.
#
# ~~~ruby
class Anything
  def foo
    a = 5
    @a = a
  end

  def bar
    @a += 1
  end
  def show_a
    puts @a
  end
end

any = Anything.new
any.foo
any.show_a
any.bar

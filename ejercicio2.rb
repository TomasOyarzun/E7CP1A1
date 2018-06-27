productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each { |valor, producto| puts valor }
productos['cereal'] = 2200
productos['bebida'] = 2000
a = productos.to_a
print a
puts ''
productos.delete('galletas')
print productos
puts ''
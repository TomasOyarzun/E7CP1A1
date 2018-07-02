restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
#1. Obtener el plato mas caro.
restaurant_menu.each{|key, value| puts key if value == restaurant_menu.values.max}
#2. Obtener el plato mas barato.
restaurant_menu.each{|key, value| puts key if value == restaurant_menu.values.min}
#3. Sacar el promedio del valor de los platos.
a = (restaurant_menu.inject(0){|sum, x| sum + x[1]}) / restaurant_menu.length
puts a
#. Crear un arreglo con solo los nombres de los platos.
a = restaurant_menu.map{|key, value| key}.to_a
print a
puts ''
#5. Crear un arreglo con solo los valores de los platos.
a = restaurant_menu.map{|key, value| value}.to_a
print a
puts ''
#6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
a = restaurant_menu.map{|key, value| key}.to_a
b = restaurant_menu.map{|key, value| value * 1.19}.to_a
restaurant_menu = a.zip(b).to_h
puts restaurant_menu
#7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.
a = restaurant_menu.map{|key, value| key}.to_a
scan = 0
for x in 0...a.length
	a[x].each_char{|y| scan = x if y == ' '}
end
restaurant_menu[a[scan]] = restaurant_menu[a[scan]] - (restaurant_menu[a[scan]] * 0.2)
puts restaurant_menu








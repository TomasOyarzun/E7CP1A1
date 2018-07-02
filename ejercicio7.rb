


=begin
Se tiene un hash con el inventario de un negocio de computadores.
Se pide:
- Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.

- Si el usuario ingresa 1, podrá **agregar** un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
	- Ejemplo del input: "Pendrives, 100"

- Si el usuario ingresa 2, **podrá eliminar** un item.

- Si el usuario ingresa 3, puede **actualizar** la información almacenada (item y stock).

- Si el usuario ingresa 4, podrá ver el **stock total** (suma del stock de cada item) que hay en el negocio.

- Si el usuario ingresa 5, podrá ver el **ítem que tiene la mayor cantidad de stock**.

- Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item **existe en el inventario** o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".

- El programa debe repertirse hasta que el usuario ingrese 7 (salir).
=end
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

sw = true
while sw == true do
puts "¿Que desea hacer?\n1-> Agregar un item y su stock. Para separar el nombre del stock ocupe una coma
2-> Eliminar un item\n3-> Actualizar la información almacenada\n4-> Revisar el stock total
5-> Item con la mayor cantidad de stock\n6-> Chequear si un item existe en el inventario
7-> SALIR"
	answ = gets.chomp.to_i
	case answ
	when 1
		puts 'Ingrese el item y su stock separado por una coma'
		item_stock = gets.chomp.to_s
		a = item_stock.split(',').to_a
		inventario[a[0]] = a[1].to_i
		#Convirtiendo las llaves de string a simbolos
		inventario = inventario.inject({}){|memo,(key, value)| memo[key.to_sym] = value; memo}
	when 2
	puts 'Ingrese el item que desea eliminar'
		item_delete = gets.chomp.to_s
		inventario.delete(item_delete.to_sym)
	when 3
		puts inventario
	when 4
		puts inventario.inject(0){|sum, x| sum + x[1]}
	when 5
		inventario.each{|key, value| puts key if value == inventario.values.max}
	when 6
		puts 'Ingrese el item a corroborar'
		scan = gets.chomp
		puts inventario.key?(scan.to_sym)
	when 7
		sw = false
	else
		puts 'Ingrese una opción valida'
	end
end
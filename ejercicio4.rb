personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

personas_hash = (personas.zip(edades)).to_h
puts personas_hash

#Opción 1
def age_average(x)
	average = 0
	x.each{|keys, value| average += value}
	average = average / x.length
end

#Opción 2
def age_average2(y)
	b = (y.inject(0){ |sum, x| sum + x[1] }) / y.length
end

puts age_average(personas_hash)
puts age_average2(personas_hash)
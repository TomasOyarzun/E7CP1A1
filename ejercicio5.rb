meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
h = (meses.zip(ventas)).to_h
puts h
h = h.invert
puts h
h.each{|key, value| puts value if key == h.keys.max}
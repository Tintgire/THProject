def add(a, b)
	add = a + b
	return add
end

def subtract(a, b)
	subtract = a - b
	return subtract
end

def multiply(a, b)
	multiply = a*b
	return multiply
end

def power(a, b)
	power = a ** b
	return power
end

def sum(a)
	sum = a.reduce(:+).to_f + 0
	return sum
end

def factorial(a)
	factorial = (1..a).reduce(:*) || 1
	return factorial
end


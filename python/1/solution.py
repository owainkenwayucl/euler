def divok(x):
	if x%3 == 0:
		return x
	if x%5 == 0: 
		return x
	return 0

def sol(n):
	sum = 0
	for x in range(n):
		sum += divok(x)
	return sum

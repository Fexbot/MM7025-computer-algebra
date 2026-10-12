print("Task 1")
fib = (i -> if i > 2 then fib (i-1) + fib (i-2)
            else 1)

for i from 1 to 10 
	do print("fib", i, fib i)

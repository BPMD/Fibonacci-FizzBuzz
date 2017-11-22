# Fibonacci-FizzBuzz
Program to generate the first n Fibonacci numbers F(n), printing

    “Buzz” when F(n) is divisible by 3.
    “Fizz” when F(n) is divisible by 5.
    “FizzBuzz” when F(n) is divisible by 15.
    “BuzzFizz” when F(n) is prime.
    the value F(n) otherwise.

Programming language used ‘C’ and Compiler used is “gcc”.
This repo has two directories “include” and “src”. “include” directory has all header files and “src” directory has all ‘C’ source files. It also has GNU Makefile to build ELF.

Procedure to generate a ELF or EXE:
1. Goto head of the repo.
2. make command to clean an obj and EXE : “make clean”
3. make command to generate an EXE : “make all” or “make FUZZ”
4. Output of the EXE is “FUZZ”.

Program to generate the first n Fibonacci numbers F(n), printing

    “Buzz” when F(n) is divisible by 3.
    “Fizz” when F(n) is divisible by 5.
    “FizzBuzz” when F(n) is divisible by 15.
    “BuzzFizz” when F(n) is prime.
    the value F(n) otherwise.

Programming language used ‘C’ and Compiler used is “gcc”.
This repo has two directories “include” and “src”. “include” directory has all header files and “src” directory has all ‘C’ source files. It also has GNU Makefile to build ELF.

Procedure to generate a ELF or EXE:
1. Goto head of the repo.
2. make command to clean an obj and EXE : “make clean”
3. make command to generate an EXE : “make all” or “make FUZZ”
4. Output of the EXE is “FUZZ”.

Here is a sample build output:
$ make clean
rm -f ./src/*.o
rm -f FUZZ

$ make all
gcc -c -o src/App_Main.o src/App_Main.c -I ./include
gcc -c -o src/Fibonacci.o src/Fibonacci.c -I ./include
gcc -c -o src/Prime.o src/Prime.c -I ./include
gcc -o FUZZ src/App_Main.o src/Fibonacci.o src/Prime.o -I ./include

“src” directory information:

    Fibonacci.c
    This source file is implemented an algorithm to generate a Fibonacci sequence.
    Fibonacci function F(n) = F(n-1) + F(n-2). Represented fibonacci f(n) in matrix transformation.
    Not used recursive functions, used binary exponentiation algorithm to generate a fibonacci sequence number.
    Binary exponentiation takes time complexity O(log n) and space complexity O(1).
    Also used modulo operator for perodicity of fibonacci sequence.
    Name of the API to generate Fibonacci sequence: u_int_64_t fibonacci(u_int_32_t n)

    Prime.c
    This source file is implemented an algorithm to find a given number is prime or not.
    Name of the API to check prime number: bool is_prime(u_int_32_t n)

    App_Main.c
    This source file is implemented an application logic “FizzBuzz”.

Example output of Fizzbuzz:

$ ./FUZZ.exe
Enter a number: 20
f(0) : 0
f(1) : 1
f(2) : BuzzFizz
f(3) : BuzzFizz
f(4) : 3
f(5) : BuzzFizz
f(6) : Buzz
f(7) : BuzzFizz
f(8) : 21
f(9) : Buzz
f(10) : Fizz
f(11) : BuzzFizz
f(12) : Buzz
f(13) : BuzzFizz
f(14) : 377
f(15) : FizzBuzz
f(16) : 987
f(17) : BuzzFizz
f(18) : Buzz
f(19) : BuzzFizz
f(20) : Fizz

$ ./FUZZ.exe
Enter a number: 40
f(0) : 0
f(1) : 1
f(2) : BuzzFizz
f(3) : BuzzFizz
f(4) : 3
f(5) : BuzzFizz
f(6) : Buzz
f(7) : BuzzFizz
f(8) : 21
f(9) : Buzz
f(10) : Fizz
f(11) : BuzzFizz
f(12) : Buzz
f(13) : BuzzFizz
f(14) : 377
f(15) : FizzBuzz
f(16) : 987
f(17) : BuzzFizz
f(18) : Buzz
f(19) : BuzzFizz
f(20) : Fizz
f(21) : Buzz
f(22) : 17711
f(23) : BuzzFizz
f(24) : Buzz
f(25) : Fizz
f(26) : 121393
f(27) : Buzz
f(28) : 317811
f(29) : BuzzFizz
f(30) : FizzBuzz
f(31) : BuzzFizz
f(32) : 2178309
f(33) : Buzz
f(34) : 5702887
f(35) : Fizz
f(36) : Buzz
f(37) : BuzzFizz
f(38) : 39088169
f(39) : Buzz
f(40) : Fizz


  

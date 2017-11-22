# Fibonacci-FizzBuzz
Program to generate the first n Fibonacci numbers F(n), printing

    “Buzz” when F(n) is divisible by 3.
    “Fizz” when F(n) is divisible by 5.
    “FizzBuzz” when F(n) is divisible by 15.
    “BuzzFizz” when F(n) is prime.
    the value F(n) otherwise.

Programming language used ‘C’ and Compiler used is “gcc”.
This repo has two directories “include” and “src”. “include” directory has all header files and “src” directory has all ‘C’ source files. It also has GNU Makefile to build ELF. Apart from "stdio.h", not used any GNU based Libraries.

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

"Example" output of Fizzbuzz:

    $ ./FUZZ.exe
    Enter a number: 20
    f(0)   : 0
    f(1)   : 1
    f(2)   : BuzzFizz
    f(3)   : BuzzFizz
    f(4)   : 3
    f(5)   : BuzzFizz
    f(6)   : Buzz
    f(7)   : BuzzFizz
    f(8)   : 21
    f(9)   : Buzz
    f(10)   : Fizz
    f(11)   : BuzzFizz
    f(12)   : Buzz
    f(13)   : BuzzFizz
    f(14)   : 377
    f(15)   : FizzBuzz
    f(16)   : 987
    f(17)   : BuzzFizz
    f(18)   : Buzz
    f(19)   : BuzzFizz
    f(20)   : Fizz

    $ ./FUZZ.exe
    Enter a number: 100
    f(0)   : 0
    f(1)   : 1
    f(2)   : BuzzFizz
    f(3)   : BuzzFizz
    f(4)   : 3
    f(5)   : BuzzFizz
    f(6)   : Buzz
    f(7)   : BuzzFizz
    f(8)   : 21
    f(9)   : Buzz
    f(10)   : Fizz
    f(11)   : BuzzFizz
    f(12)   : Buzz
    f(13)   : BuzzFizz
    f(14)   : 377
    f(15)   : FizzBuzz
    f(16)   : 987
    f(17)   : BuzzFizz
    f(18)   : Buzz
    f(19)   : BuzzFizz
    f(20)   : Fizz
    f(21)   : Buzz
    f(22)   : 17711
    f(23)   : BuzzFizz
    f(24)   : Buzz
    f(25)   : Fizz
    f(26)   : 121393
    f(27)   : Buzz
    f(28)   : 317811
    f(29)   : BuzzFizz
    f(30)   : FizzBuzz
    f(31)   : BuzzFizz
    f(32)   : 2178309
    f(33)   : Buzz
    f(34)   : 5702887
    f(35)   : Fizz
    f(36)   : Buzz
    f(37)   : BuzzFizz
    f(38)   : 39088169
    f(39)   : Buzz
    f(40)   : Fizz
    f(41)   : BuzzFizz
    f(42)   : Buzz
    f(43)   : BuzzFizz
    f(44)   : 701408733
    f(45)   : FizzBuzz
    f(46)   : 1836311903
    f(47)   : BuzzFizz
    f(48)   : Buzz
    f(49)   : 7778742049
    f(50)   : Fizz
    f(51)   : Buzz
    f(52)   : 32951280099
    f(53)   : BuzzFizz
    f(54)   : Buzz
    f(55)   : Fizz
    f(56)   : 225851433717
    f(57)   : Buzz
    f(58)   : 591286729879
    f(59)   : BuzzFizz
    f(60)   : FizzBuzz
    f(61)   : BuzzFizz
    f(62)   : 4052739537881
    f(63)   : Buzz
    f(64)   : 10610209857723
    f(65)   : Fizz
    f(66)   : Buzz
    f(67)   : BuzzFizz
    f(68)   : 72723460248141
    f(69)   : Buzz
    f(70)   : Fizz
    f(71)   : BuzzFizz
    f(72)   : Buzz
    f(73)   : BuzzFizz
    f(74)   : 1304969544928657
    f(75)   : FizzBuzz
    f(76)   : 3416454622906707
    f(77)   : 5527939700884757
    f(78)   : Buzz
    f(79)   : BuzzFizz
    f(80)   : Fizz
    f(81)   : Buzz
    f(82)   : 61305790721611591
    f(83)   : BuzzFizz
    f(84)   : Buzz
    f(85)   : Fizz
    f(86)   : 420196140727489673
    f(87)   : Buzz
    f(88)   : 1100087778366101931
    f(89)   : BuzzFizz
    f(90)   : FizzBuzz
    f(91)   : 4660046610375530309
    f(92)   : 7540113804746346429
    f(93)   : Buzz
    f(94)   : 1293530146158671551
    f(95)   : Fizz
    f(96)   : Buzz
    f(97)   : BuzzFizz
    f(98)   : 6174643828739884737
    f(99)   : Buzz
    f(100)   : Fizz





  

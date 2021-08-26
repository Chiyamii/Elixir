defmodule Intro do

  #smallest of two
  def smallest(n1, n2) when n1 < n2, do: n1
  def smallest(_n1, n2), do: n2

  #largest of three
  def largest(n1, n2, n3) when n1 >= n2 and n1 >= n3, do: n1
  def largest(n1, n2, n3) when n2 >= n1 and n2 >= n3, do: n2
  def largest(n1, n2, n3) when n3 >= n2 and n3 >= n1, do: n3

  #smallest of four
  def smallest(n1, n2, n3, n4) do
    smallest(smallest(n1, n2), smallest(n3, n4))
  end

  #TicketPrice
  def ticketPrice(x) when x < 18, do: 10
  def ticketPrice(x) when x <= 64, do: 20
  def ticketPrice(_x), do: 15

  #Next Number
  def nextnumber(x), do: x+1

  #Factorial
  def factorial(0), do: 1
  def factorial(x) when x > 0, do: x*factorial(x-1)

  #Fibonacci
  def fibonacci(n) when n == 0 or n == 1, do: n
  def fibonacci(x), do: fibonacci(x-1) + fibonacci(x-2)

  #Is Empty
  def is_empty([]), do: true
  def is_empty(_list), do: false

  #First of
  def first_of([]), do: nil
  def first_of(list), do: hd list

  #Last of
  def last_of([]), do: nil
  def last_of(list) when [hd list] == list, do: hd list
  def last_of(list), do: last_of(tl list)

  #Prepend
  def prepend(n, list), do: [n|list]

  #Append
  def append(n, []), do: [n]
  def append(n, [head | tail]), do: [head|append(n,tail)]

  #Length
  def list_length([]), do: 0
  def list_length([_head|tail]), do: 1 + list_length(tail)

  #Sum
  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end

  #Average
  def average([]), do: 0
  def average(list), do: sum(list)/list_length(list)

  #Concat
  def concat([], []), do: []
  def concat(list1, []), do: list1
  def concat([], list2), do: list2
  def concat(list1, [head | tail]), do: concat(append(head, list1), tail)

  #

  def hello do
    :world
  end
end

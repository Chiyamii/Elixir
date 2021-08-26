defmodule IntroTest do

  use ExUnit.Case

  #smallest of two
  test "smallest of two when smallest is first" do
    assert Intro.smallest(1,2) == 1
  end
  test "smallest of two when smallest is last" do
    assert Intro.smallest(3,2) == 2
  end
  test "smallest of two of equal size" do
    assert Intro.smallest(1337,1337) == 1337
  end

  #largest of three
  test "largest of three first largest" do
    assert Intro.largest(5, 4, 3) == 5
  end
   test "largest of three second largest" do
     assert Intro.largest(5, 6, 3) == 6
   end
  test "largest of three third largest" do
    assert Intro.largest(5, 4, 9) == 9
  end
  test "largest of three two equal1" do
    assert Intro.largest(3, 3, 2) == 3
    assert Intro.largest(3, 2, 3) == 3
    assert Intro.largest(2, 3, 3) == 3
  end
  test "largest of three equal" do
    assert Intro.largest(7, 7, 7) == 7
  end
   
  #smallest of four
  test "smallest of four first is smallest" do
    assert Intro.smallest(1, 2, 3, 4) == 1
  end
  test "smallest of four second is smallest" do
    assert Intro.smallest(2, 1, 3, 4) == 1
  end
  test "smallest of four third is smallest" do
    assert Intro.smallest(2, 3, 1, 4) == 1
  end
  test "smallest of four fourth is smallest" do
    assert Intro.smallest(2, 3, 4, 1) == 1
  end
  test "smallest of four two are smallest" do
    assert Intro.smallest(1, 1, 2, 3) == 1
    assert Intro.smallest(2, 1, 1, 3) == 1
    assert Intro.smallest(2, 3, 1, 1) == 1
    assert Intro.smallest(1, 2, 3, 1) == 1
    assert Intro.smallest(1, 2, 1, 3) == 1
    assert Intro.smallest(2, 1, 3, 1) == 1
  end
  test "smallest of four three are smallest" do
    assert Intro.smallest(1, 1, 1, 2) == 1
    assert Intro.smallest(2, 1, 1, 1) == 1
    assert Intro.smallest(1, 1, 2, 1) == 1
    assert Intro.smallest(1, 2, 1, 1) == 1
  end
  test "smallest of four all equal" do
    assert Intro.smallest(4, 4, 4, 4) == 4
  end

  #TicketPrice
  test "age if under 18" do
    assert Intro.ticketPrice(17) == 10
  end
  test "age if age 18-64" do
    assert Intro.ticketPrice(18) == 20
    assert Intro.ticketPrice(45) == 20
    assert Intro.ticketPrice(64) == 20
  end
  test "age if over 64" do
    assert Intro.ticketPrice(65) == 15
  end

  #Next Number
  test "next number" do
    assert Intro.nextnumber(3) == 4
  end
  test "next number if negative" do
    assert Intro.nextnumber(-2) == -1
  end

  #Factorial
  test "factorial" do
    assert Intro.factorial(4) == 24
    assert Intro.factorial(3) == 6
    assert Intro.factorial(2) == 2
    assert Intro.factorial(1) == 1
    assert Intro.factorial(0) == 1
  end

  #Fibonacci
  test "Fibonacci" do
    assert Intro.fibonacci(0) == 0
    assert Intro.fibonacci(1) == 1
    assert Intro.fibonacci(6) ==  8
    assert Intro.fibonacci(16) == 987
  end

  #Is Empty
  test "Is Empty" do
    assert Intro.is_empty([]) == true
    assert Intro.is_empty([nil]) == false
    assert Intro.is_empty([1, 2]) == false
  end

  #First Of
  test "First of" do
    assert Intro.first_of([1, 2, 3]) == 1
    assert Intro.first_of(["hej", "okej", "kebab"]) == "hej"
    assert Intro.first_of([]) == nil
    assert Intro.first_of([nil]) == nil
    #to do fråga daniel skillnaden mellan tom och nil lista
  end

  #Last of
  test "Last of" do
    assert Intro.last_of([1, 2, 3]) == 3
    assert Intro.last_of(["hej", "okej", "kebab"]) == "kebab"
    assert Intro.last_of([]) == nil
    assert Intro.last_of([nil]) == nil
  end

  #Prepend
  test "Prepend" do
    assert Intro.prepend(4, [3, 2, 1]) == [4, 3, 2, 1]
    assert Intro.prepend(5, ["hej", "nej", "svej"]) == [5, "hej", "nej", "svej"]
    assert Intro.prepend(1, [nil]) == [1, nil]
    assert Intro.prepend(1, []) == [1]
  end

  #Append
  test "Append" do
    assert Intro.append(4, [3, 2, 1]) == [3, 2, 1, 4]
    assert Intro.append(5, ["hej", "nej", "svej"]) == ["hej", "nej", "svej", 5]
    assert Intro.append(1, [nil]) == [nil, 1]
    assert Intro.append(1, []) == [1]
    assert Intro.append(2, [1]) == [1,2]

  end

  #Length
  test "Length" do
    assert Intro.list_length([1, 2, 3]) == 3
    assert Intro.list_length([2, 1]) == 2
    assert Intro.list_length([2, 1]) == 2
  end

  #Sum
  test "Sum" do
    assert Intro.sum([1,2,3]) == 6
    assert Intro.sum([]) == 0
  end

  #Average
  test "Average" do
    assert Intro.average([3, 3, 3]) == 3
    assert Intro.average([2, 3, 4]) == 3
  end

  #Concat
  test "Concat" do
    assert Intro.concat([], []) == []
    assert Intro.concat([1,2], [3,4]) == [1,2,3,4]
  end

  test "greets the world" do
    assert Intro.hello() == :world
  end
end
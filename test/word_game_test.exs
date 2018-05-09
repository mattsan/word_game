defmodule WordGameTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  describe "FizzBuzz" do
    use WordGame, fizz: 3, buzz: 5

    test "Fizz" do
      assert capture_io(fn -> 1 |> fizz() |> IO.write() end) == "1"
      assert capture_io(fn -> 2 |> fizz() |> IO.write() end) == "2"
      assert capture_io(fn -> 3 |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 4 |> fizz() |> IO.write() end) == "4"
      assert capture_io(fn -> 5 |> fizz() |> IO.write() end) == "5"
      assert capture_io(fn -> 6 |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 7 |> fizz() |> IO.write() end) == "7"
      assert capture_io(fn -> 8 |> fizz() |> IO.write() end) == "8"
      assert capture_io(fn -> 9 |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 10 |> fizz() |> IO.write() end) == "10"
      assert capture_io(fn -> 11 |> fizz() |> IO.write() end) == "11"
      assert capture_io(fn -> 12 |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 13 |> fizz() |> IO.write() end) == "13"
      assert capture_io(fn -> 14 |> fizz() |> IO.write() end) == "14"
      assert capture_io(fn -> 15 |> fizz() |> IO.write() end) == "Fizz"
    end

    test "Buzz" do
      assert capture_io(fn -> 1 |> buzz() |> IO.write() end) == "1"
      assert capture_io(fn -> 2 |> buzz() |> IO.write() end) == "2"
      assert capture_io(fn -> 3 |> buzz() |> IO.write() end) == "3"
      assert capture_io(fn -> 4 |> buzz() |> IO.write() end) == "4"
      assert capture_io(fn -> 5 |> buzz() |> IO.write() end) == "Buzz"
      assert capture_io(fn -> 6 |> buzz() |> IO.write() end) == "6"
      assert capture_io(fn -> 7 |> buzz() |> IO.write() end) == "7"
      assert capture_io(fn -> 8 |> buzz() |> IO.write() end) == "8"
      assert capture_io(fn -> 9 |> buzz() |> IO.write() end) == "9"
      assert capture_io(fn -> 10 |> buzz() |> IO.write() end) == "Buzz"
      assert capture_io(fn -> 11 |> buzz() |> IO.write() end) == "11"
      assert capture_io(fn -> 12 |> buzz() |> IO.write() end) == "12"
      assert capture_io(fn -> 13 |> buzz() |> IO.write() end) == "13"
      assert capture_io(fn -> 14 |> buzz() |> IO.write() end) == "14"
      assert capture_io(fn -> 15 |> buzz() |> IO.write() end) == "Buzz"
    end

    test "FizzBuzz" do
      assert capture_io(fn -> 1 |> fizz() |> buzz() |> IO.write() end) == "1"
      assert capture_io(fn -> 2 |> fizz() |> buzz() |> IO.write() end) == "2"
      assert capture_io(fn -> 3 |> fizz() |> buzz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 4 |> fizz() |> buzz() |> IO.write() end) == "4"
      assert capture_io(fn -> 5 |> fizz() |> buzz() |> IO.write() end) == "Buzz"
      assert capture_io(fn -> 6 |> fizz() |> buzz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 7 |> fizz() |> buzz() |> IO.write() end) == "7"
      assert capture_io(fn -> 8 |> fizz() |> buzz() |> IO.write() end) == "8"
      assert capture_io(fn -> 9 |> fizz() |> buzz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 10 |> fizz() |> buzz() |> IO.write() end) == "Buzz"
      assert capture_io(fn -> 11 |> fizz() |> buzz() |> IO.write() end) == "11"
      assert capture_io(fn -> 12 |> fizz() |> buzz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 13 |> fizz() |> buzz() |> IO.write() end) == "13"
      assert capture_io(fn -> 14 |> fizz() |> buzz() |> IO.write() end) == "14"
      assert capture_io(fn -> 15 |> fizz() |> buzz() |> IO.write() end) == "FizzBuzz"
    end

    test "BuzzFizz" do
      assert capture_io(fn -> 1 |> buzz() |> fizz() |> IO.write() end) == "1"
      assert capture_io(fn -> 2 |> buzz() |> fizz() |> IO.write() end) == "2"
      assert capture_io(fn -> 3 |> buzz() |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 4 |> buzz() |> fizz() |> IO.write() end) == "4"
      assert capture_io(fn -> 5 |> buzz() |> fizz() |> IO.write() end) == "Buzz"
      assert capture_io(fn -> 6 |> buzz() |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 7 |> buzz() |> fizz() |> IO.write() end) == "7"
      assert capture_io(fn -> 8 |> buzz() |> fizz() |> IO.write() end) == "8"
      assert capture_io(fn -> 9 |> buzz() |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 10 |> buzz() |> fizz() |> IO.write() end) == "Buzz"
      assert capture_io(fn -> 11 |> buzz() |> fizz() |> IO.write() end) == "11"
      assert capture_io(fn -> 12 |> buzz() |> fizz() |> IO.write() end) == "Fizz"
      assert capture_io(fn -> 13 |> buzz() |> fizz() |> IO.write() end) == "13"
      assert capture_io(fn -> 14 |> buzz() |> fizz() |> IO.write() end) == "14"
      assert capture_io(fn -> 15 |> buzz() |> fizz() |> IO.write() end) == "BuzzFizz"
    end
  end

  describe "FizzBuzzPezz" do
    use WordGame, fizz: 3, buzz: 5, pezz: 7

    test "Pezz" do
      assert capture_io(fn -> 1 |> pezz() |> IO.write() end) == "1"
      assert capture_io(fn -> 2 |> pezz() |> IO.write() end) == "2"
      assert capture_io(fn -> 3 |> pezz() |> IO.write() end) == "3"
      assert capture_io(fn -> 4 |> pezz() |> IO.write() end) == "4"
      assert capture_io(fn -> 5 |> pezz() |> IO.write() end) == "5"
      assert capture_io(fn -> 6 |> pezz() |> IO.write() end) == "6"
      assert capture_io(fn -> 7 |> pezz() |> IO.write() end) == "Pezz"
      assert capture_io(fn -> 8 |> pezz() |> IO.write() end) == "8"
      assert capture_io(fn -> 9 |> pezz() |> IO.write() end) == "9"
      assert capture_io(fn -> 10 |> pezz() |> IO.write() end) == "10"
      assert capture_io(fn -> 11 |> pezz() |> IO.write() end) == "11"
      assert capture_io(fn -> 12 |> pezz() |> IO.write() end) == "12"
      assert capture_io(fn -> 13 |> pezz() |> IO.write() end) == "13"
      assert capture_io(fn -> 14 |> pezz() |> IO.write() end) == "Pezz"
      assert capture_io(fn -> 15 |> pezz() |> IO.write() end) == "15"
    end

    test "FizzBuzzPezz" do
      assert capture_io(fn ->
               105 |> fizz() |> buzz() |> pezz() |> IO.write()
             end) == "FizzBuzzPezz"

      assert capture_io(fn ->
               105 |> buzz() |> pezz() |> fizz() |> IO.write()
             end) == "BuzzPezzFizz"

      assert capture_io(fn ->
               105 |> pezz() |> fizz() |> buzz() |> IO.write()
             end) == "PezzFizzBuzz"
    end
  end

  describe "ヒューヒューとポーポー" do
    use WordGame, ヒュー: 3, ポー: 5

    test "ヒューヒュー" do
      assert capture_io(fn -> 1 |> ヒュー() |> ヒュー() |> IO.write() end) == "1"
      assert capture_io(fn -> 3 |> ヒュー() |> ヒュー() |> IO.write() end) == "ヒューヒュー"
      assert capture_io(fn -> 5 |> ヒュー() |> ヒュー() |> IO.write() end) == "5"
    end

    test "ポーポー" do
      assert capture_io(fn -> 1 |> ポー() |> ポー() |> IO.write() end) == "1"
      assert capture_io(fn -> 3 |> ポー() |> ポー() |> IO.write() end) == "3"
      assert capture_io(fn -> 5 |> ポー() |> ポー() |> IO.write() end) == "ポーポー"
    end

    test "ヒューヒューポーポー" do
      assert capture_io(fn ->
               1 |> ヒュー() |> ヒュー() |> ポー() |> ポー() |> IO.write()
             end) == "1"

      assert capture_io(fn ->
               3 |> ヒュー() |> ヒュー() |> ポー() |> ポー() |> IO.write()
             end) == "ヒューヒュー"

      assert capture_io(fn ->
               5 |> ヒュー() |> ヒュー() |> ポー() |> ポー() |> IO.write()
             end) == "ポーポー"

      assert capture_io(fn ->
               15 |> ヒュー() |> ヒュー() |> ポー() |> ポー() |> IO.write()
             end) == "ヒューヒューポーポー"
    end
  end
end

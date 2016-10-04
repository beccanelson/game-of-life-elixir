defmodule GameOfLifeTest do
  use ExUnit.Case
  doctest GameOfLife

  test "a new game has an empty world" do
    assert GameOfLife.new |> GameOfLife.is_empty == true 
  end

  test "a living cell can be added to the world" do
    assert GameOfLife.set_living_at({1, 1}) 
      |> GameOfLife.is_alive_at({1, 1}) == true
  end

  test "after adding a cell the world is not empty" do
    assert GameOfLife.set_living_at({1, 1})
      |> GameOfLife.is_empty == false
  end

  test "an empty world is still empty after one tick" do
    assert GameOfLife.new 
      |> GameOfLife.tick 
      |> GameOfLife.is_empty == true
  end
end

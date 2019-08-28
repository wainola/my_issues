defmodule MyIssuesTest do
  use ExUnit.Case
  doctest MyIssues

  test "greets the world" do
    assert MyIssues.hello() == :world
  end
end

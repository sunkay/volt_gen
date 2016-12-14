defmodule Mix.Tasks.Hello do
  use Mix.Task

  @shortdoc "Spits out hello"

  def run(name) do
    IO.puts "Hello #{name}"
  end
end

defmodule Identicon do
  @moduledoc """
  Documentation for Identicon.
  """

  def main(input) do
  	input
  	|> hash_input
  	|> pick_color
  end

  def pick_color(image) do
  	%Identicon.Image{hex: [r, g, b | _tail]} = image
  	%Identicon.Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
  	hex = :crypto.hash(:md5, input)
  	|> :binary.bin_to_list
  	%Identicon.Image{hex: hex}
  end
end


module Dictionary

  def eng_braille_dict
    # first two are top two, then mid two, then bot two
    eng_braille = {
      "a" => "0.\n..\n..\n",
      "b" => "0.\n0.\n..\n",
      "c" => "00\n..\n..\n",
      "d" => "00\n.0\n..\n",
      "e" => "0.\n.0\n..\n",
      "f" => "00\n0.\n..\n",
      "g" => "00\n00\n..\n",
      "h" => "0.\n00\n..\n",
      "i" => ".0\n0.\n..\n",
      "j" => ".0\n00\n..\n",
      "k" => "0.\n..\n0.\n",
      "l" => "0.\n0.\n0.\n",
      "m" => "00\n..\n0.\n",
      "n" => "00\n.0\n0.\n",
      "o" => "0.\n.0\n0.\n",
      "p" => "00\n0.\n0.\n",
      "q" => "00\n00\n0.\n",
      "r" => "0.\n00\n0.\n",
      "s" => ".0\n0.\n0.\n",
      "t" => ".0\n00\n0.\n",
      "u" => "0.\n..\n00\n",
      "v" => "0.\n0.\n00\n",
      "w" => ".0\n00\n.0\n",
      "x" => "00\n..\n00\n",
      "y" => "00\n.0\n00\n",
      "z" => "0.\n.0\n00\n",
      " " => "..\n..\n..\n"
    }
  end

end
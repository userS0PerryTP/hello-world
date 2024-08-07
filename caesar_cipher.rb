def cipher(message, num_switch)
  switch = num_switch % 26

  converted = message.chars.map do |char|
    # A to Z => 65 to 90
    # a to z => 97 to 122

    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 65 : 97;
      ((char.ord - base + switch )% 26 + base).chr 
    else
      char
    end
     
  end

  converted.join
end

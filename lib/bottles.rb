class Bottles
  def verse(number)
    if number == 0
      first_part =
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n"
    else
      first_part =
      "#{number} bottle#{(number) > 1 ? "s" : ""} of beer on the wall, " +
        "#{number} bottle#{(number) > 1 ? "s" : ""} of beer.\n"
    end

    if number == 0
      second_part =
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    elsif number - 1 == 0
      second_part =
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
    else
      second_part =
        "Take one down and pass it around, " +
        "#{number - 1} bottle#{(number - 1) > 1 ? "s" : ""} of beer on the wall.\n"
    end

    first_part + second_part
  end

  def verses(number1, number2)
    number1.downto(number2).map do |n|
      verse(n)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end
end
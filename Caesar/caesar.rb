def caesar_cipher(string, num)
  alphabet = %w[A B C D E F G H I J
                K L M N O P Q R S T
                U V W X Y Z]

  string.split('').each do |i|
    idx = alphabet.find_index(i.upcase)
    a = ''
    if !idx.nil?
      idx = alphabet.find_index(i.upcase)
      new_idx = idx + num
      if new_idx > 25
        new_idx -= 26
        a += if i.upcase == i
               alphabet[new_idx]
             else
               alphabet[new_idx].downcase
             end
      # puts alphabet[new_idx]
      else
        a += if i.upcase == i
               alphabet[new_idx]
             else
               alphabet[new_idx].downcase
             end

      end

    else
      a += if i == ' '
             ' '
           else
             i
           end
    end
    puts a
  end
end

caesar_cipher('What a string!', 5)

@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(letter)
  @letter = @dictionary[letter]
  @letter
end

def decode_word(word)
  @word_array = word.split
  @current_char = ''
  @word_array.each do |one_word|
    @current_char += decode_char(one_word)
  end
  print "#{@current_char} "
end

def decode_message(message)
  @message_arr = message.split('   ')
  @message_arr.each do |msg|
    decode_word(msg)
  end
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

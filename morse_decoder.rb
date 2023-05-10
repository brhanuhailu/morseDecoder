def decode_char(morse_char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-'  => 'K', '.-..' => 'L',
    '--' => 'M', '-.'   => 'N', '---'  => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_code[morse_char]
end

def decode_word(morse_word)
  morse_chars = morse_word.split
  decoded_word = morse_chars.map { |morse_char| decode_char(morse_char) }
  decoded_word.join
end

def decode(message)
  morse_words = message.split('   ')
  decoded_message = morse_words.map { |morse_word| decode_word(morse_word) }
  decoded_message.join(' ')
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(message)
puts decoded_message

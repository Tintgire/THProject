def caesar_cipher(sentence, key)

  unless key(is_a? Integer) && (key > 26 || key < 0)
    return "La cle est mauvaise"
  end

  i = 0
  sentence.char do |letter|

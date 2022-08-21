require 'pry-byebug'

def ceasar_cipher(decrypted_text, shift)
    encrypted_byte_array = []
    decrypted_text.each_byte do |byte|
        if byte >= 65 && byte <= 90
            byte += shift
            byte -= 26 if byte > 90
        elsif byte >= 95 && byte <= 122
            byte += shift
            byte -= 26 if byte > 122
        end
        encrypted_byte_array.push(byte)
    end
    return encrypted_byte_array.pack('c*')
end
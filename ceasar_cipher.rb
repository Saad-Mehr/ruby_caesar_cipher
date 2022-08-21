require 'pry-byebug'

def ceasar_cipher(decrypted_text, shift)
    encrypted_byte_array = []
    decrypted_text.each_byte do |byte|
        if byte >= 65 && byte <= 90
            byte += shift
            if byte > 90
                byte -= 26
            end
        elsif byte >= 95 && byte <= 122
            byte += shift
                if byte > 122
                    byte -= 26
                end
        end
        new_array.push(byte)
    end
    encrypted_text = new_array.pack('c*')
    return encrypted_text
end
git
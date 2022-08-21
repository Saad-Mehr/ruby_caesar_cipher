require 'pry-byebug'

def ceasar_cipher(decrypted_text, shift)
    binding.pry
    byte_array = decrypted_text.bytes
    new_array = []
    byte_array.each do |bytey|
        if bytey >= 65 && bytey <= 90
            bytey += shift
            if bytey > 90
                bytey -= 26
            end
        elsif bytey >= 95 && bytey <= 122
            bytey += shift
                if bytey > 122
                    bytey -= 26
                end
        end
        new_array.push(bytey)
    end
    encrypted_text = new_array.pack('c*')
    return encrypted_text
end


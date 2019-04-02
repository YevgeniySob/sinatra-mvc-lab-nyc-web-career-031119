class PigLatinizer

    def piglatinize(str)
        if str == ""
            return ""
        end
        vowels = "euioaEUIOA"
        final = []

        str.split.each do |word|
            first_letter = word[0]
            converted = ""
            way = "way"
            ay = "ay"
            if vowels.include?(first_letter)
                converted << word << way
            else
                # word.split.each_with_index do |letter, index|
                #     if vowels.include?(letter)
                #         converted << word[index..-1] << word[0] << ay

                #     end
                # end
                word.each_char.with_index do |letter, index|
                    if vowels.include?(letter)
                        converted << word[index..-1] + word[0..index-1] + "ay"
                        break
                    end
                end
            end
            # binding.pry
            final << converted
            
        end
        temp = final.join(" ")
        return temp
    end
end
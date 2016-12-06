require 'pry'
def reformat_languages(languages)
  new_hash = {}
  prog_lang = []
  languages.each do |style, language|
    language.each do |l, typ|
      typ.each do |t, type|
        if new_hash[l] == nil
        new_hash[l] = {type: type, style: [style]}
      #new_hash[language] = {type: type, style: style}
        else
          style_array = new_hash[l][:style]
          style_array.push(style)
        end
      end
    end
  end
  binding.pry
  new_hash
end

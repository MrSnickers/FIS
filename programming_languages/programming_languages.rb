### Organizing Nested Data

# I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

new_language_hash = {}

languages.each do |style, style_hash| # gives :oo =>{} and :functional =>{}

  style_hash.each do |language, qualities_hash| # gives :ruby =>{} , :javascript=>{}, etc.

   qualities_hash.each do |type, type_value| #gives :type =>"type"
    if new_language_hash[language].nil?
      new_language_hash[language] ={}
    end
    new_language_hash[language][:style] = [style]
    if new_language_hash[language][type].nil?
      new_language_hash[language][:type] = type_value
    end

   end

 end

end
puts new_language_hash


# I would like you to reformat the nested structure to be of the following form

# {
#   :ruby => {
#     :style => [:oo],
#     :type => "dynamic"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "dynamic"
#   }
#   etc etc
# }
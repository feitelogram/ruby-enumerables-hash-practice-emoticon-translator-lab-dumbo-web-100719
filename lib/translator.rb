require "yaml"
require "pry"

def load_library(file)
  library = {}
  new_library= {}
  library = YAML.load_file('./lib/emoticons.yml')
  new_library = {
    get_emoticon: {},
    get_meaning: {}
    
  }
    library.each do |translation, emoticons|
      new_library[:get_meaning][emoticons[1]] = translation
      new_library[:get_emoticon][emoticons[0]]= emoticons[1]
    end
    new_library
end

def get_japanese_emoticon(filepath, emoticon)
  new_library = load_library(filepath)
  if new_library[:get_emoticon][emoticon]
    new_library[:get_emoticon][emoticon]
  else 
    p "Sorry, that emoticon was not found"
end
end

def get_english_meaning(filepath, emoticon)
  new_library = load_library(filepath)
  if new_library[:get_meaning][emoticon]
    new_library[:get_meaning][emoticon]
  else 
    p "Sorry, that emoticon was not found"
end
end
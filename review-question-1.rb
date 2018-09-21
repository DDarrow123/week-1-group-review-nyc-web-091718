## QUESTION 1

require 'pry'

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
  # Ans1. pokemon[0][:abilities][0][:ability][:url]
  # Ans2. create helper function get_pokemon to obtain pokemon hash & then drill in
      # def get_pokemon(pokemon, name)
      #   pokemon.select {|pokemon| pokemon[:name] == name}[0]
      # end # end get_pokemon
      #
      # def get_ability_url(pokemon, name)
      #   p1 = get_pokemon(pokemon, name)
      #   p1[:abilities][0][:ability][:url]
      # end # end get_abilities
# How would you return the first pokemon with base experience over 40?
  # Ans. pokemon.find {|pokemon| pokemon[:base_experience] > 40}
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
  # Ans.
# How would you return an array of all of the pokemon's names?
  # Ans. pokemon.map {|pokemon| pokemon[:name]}
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
  # Ans. !!pokemon.find {|pokemon| pokemon[:weight] > 60}
  # the double bang !! forces the return value to become a boolean value.

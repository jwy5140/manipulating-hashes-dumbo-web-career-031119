def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  #your code here
  contacts.each {|x,y|
  if x == "Freddy Mercury"
    y.each {|x,y|
    if x == :favorite_icecream_flavors && y.include?("strawberry")
      y.delete("strawberry")
    else
      puts "Hey! I thought strawberry was one of your faves!"
    end
    }
  end
  }
    

  #remember to return your newly altered contacts hash!
  contacts
end


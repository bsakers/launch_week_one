class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

end

class Speedster < SuperHero
  def backstory
    "Caught in a bizzarre timeloop"
  end
  def powers
    "Can move very very fast"
  end
  def weakness
    "They age quicker than normal men"
  end
  def speed_in_mph
    super* 1000
  end
end

class Brawler < SuperHero
  def backstory
    "Radiation created a worse version of wolverine (no claws)"
  end
  def powers
    "Super strong and resilient to damage"
  end
  def weakness
    "Cannot stand being tickled"
  end
  def health
    super* 20
  end
end

class Detective < SuperHero
  def backstory
    "Sceince experiment gone wrong"
  end
  def powers
    ["See at night", "Fly", "Beak cuts through metal"]
  end
  def weakness
    "Luke Bayne"
  end
  def speed_in_mph
    10
  end
end

class Demigod < SuperHero
  def backstory
    "Of same famile as Achiles"
  end
  def powers
    "Great with a sword and can grow to 10x size of a normal man"
  end
  def weakness
    "Women"
  end
  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero
  def backstory
    "Nothing special, just traveleld the world"
  end
  def powers
    "Annoys you to death with his know-it-all attitude"
  end
  def weakness
    "Easily influeced by new people/cultures"
  end
  def species
    "Alien"
  end
  def home
    "Venus"
  end
  def psychic?
    true
  end
end

class WaterBased < SuperHero
  def backstory
    "Intelligent life that evolved simultaenously with life on above water"
  end
  def powers
    ["Great swimmers", "Have tridents", "Can control water with minds"]
  end
  def weakness
    "Cannot stay above water for more than 2 hours"
  end
  def home
    "Earth's Oceans"
  end
  def fans_per_thousand
    super/100
  end
  def psychic?
    true
  end
end

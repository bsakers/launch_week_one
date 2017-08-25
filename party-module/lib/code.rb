class PersonalizedHavocError<StandardError
end

module PartyGoer

  def initialize
    @count = 0
  end

  def drink
    @count += 1
    if @count <= 3
      return true
    else
      return false
    end
  end

  def sing
    "Party party party!"
  end

  def cause_havoc
    raise PersonalizedHavocError, "This is frustrating"
  end

  def invited?
    return true
  end

end

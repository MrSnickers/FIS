### Woodchuck class

class Woodchuck

attr_accessor :chuck_count

WOODCHUCKS = []

  def initialize
    @chuck_count = 0
    WOODCHUCKS << self
  end


  def chuck_wood
    @chuck_count +=1
  end


  def self.woodchuck_count
    @@woodchuck_count
  end


  def chuck_count
    @chuck_count
  end



end
class RockPaperScissors

  class NoSuchStrategyError < Exception  	
  end

  STRATEGY = %w[R S P]
  PLAY = ["SR","PS","RP"]

  def self.winner(move1, move2)
    
    strategy = []
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless (STRATEGY.include?(move1[1]) && STRATEGY.include?(move2[1]))

    strategy << move1[1] << move2[1]
    
    if (PLAY.include?(strategy.join) == false)
      puts "'" + "#{move1[0]}" + "'" 
    else puts "'" + "#{move2[0]}" + "'"
    end
  end  
  
  def self.tournament(net)
  end

end

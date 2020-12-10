class PiggyBank
  attr_reader :coins

  def initialize
    @coins = 0
  end

  def add_coins(coins)
    @coins += coins
  end

  def cling?
    puts "cling" if @coins > 0
    return @coins > 0
    # if @coins > 0
    #   puts "cling"
    #   return true
    # else
    #   return false
    # end
  end

  def break_piggy
    current_balance = @coins
    @coins = 0
    return current_balance
  end
end
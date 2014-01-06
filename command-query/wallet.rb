require 'pry'
class Wallet


  def initialize
    @coins = []
    @coin_values = {
      penny: 1,
      nickel: 5,
      dime: 10,
      quarter: 25,
      dollar: 100
    }
  end

  def cents
    total = 0
    @coins.each {|coin| total += @coin_values[coin]}
    total
  end

  def <<(money)
    @coins << money
  end

  def take(*money)
    money.each do |c|
      if @coins.include?(c)
        index = @coins.index(c)
        @coins.slice!(index)
      end
    end
  end
end


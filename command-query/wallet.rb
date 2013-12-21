require 'pry'
class Wallet

  attr_reader :cents

  def initialize
    @coins = []
    @cents = 0
    @coin_values = {
      penny: 1,
      nickel: 5,
      dime: 10,
      quarter: 25,
      dollar: 100
    }
  end

  def <<(money)
    @coins << money
    value = @coin_values[money]
    @cents += value
  end

  def take(*money)
    money = *money
    money.each do |c|
      if @coins.include?(c)
        index = @coins.index(c)
        left_over = @coins.slice!(index)
        @cents -= @coin_values[left_over]
      end
      cents
    end
  end
end


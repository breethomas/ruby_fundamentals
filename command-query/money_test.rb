gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'money'

class MoneyTest < Minitest::Test
  def test_money_starts_at_zero
    money = Money.new
    assert_equal 0, money.amount
  end

  def test_earn_money
    money = Money.new
    money.earn(20)
    assert_equal 20, money.amount
    money.earn(13)
    assert_equal 33, money.amount
  end

  def test_pay_money
    money = Money.new
    money.earn(50)
    money.pay(12)
    assert_equal 38, money.amount
    money.pay(7)
    assert_equal 31, money.amount
  end
end

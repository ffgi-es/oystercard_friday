class OysterCard 

LIMIT = 100

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance 
  end

  def top_up(amount)
    raise "£100 maximum balance exceeded. Current Balance: #{@balance}" if self.over_limit?(amount)
    @balance += amount
  end

  def over_limit?(money_added)
    (@balance + money_added) > LIMIT
  end

  def deduct(fare)
    @balance -= fare
  end

  def touch_in
    @in_journey = true
  end
end
class BankAccount
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  attr_reader :name
  attr_accessor :balance, :status

  def deposit(deposit)
    @balance += deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0
  end

  def close_account
    @status = "closed"
  end



end

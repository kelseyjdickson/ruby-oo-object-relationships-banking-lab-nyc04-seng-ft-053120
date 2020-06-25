    require 'pry'
    require_relative 'transfer.rb'
class BankAccount
        attr_accessor :bank_account, :balance, :status
        attr_reader :name

    def initialize(name)    #instance method
        @name = name
        @balance = 1000
        @status = 'open'
    end
    def deposit(deposit_amount) #instance method
        self.balance += deposit_amount
    end
    def display_balance
        return "Your balance is $#{@balance}."
    end
    def valid? # non-attribute instance method
         if @balance > 0 && @status == 'open'
         return true
         end
         return false
    end

    def close_account 
        if !valid? == false
            @status = "closed"
        end
    end
    
end
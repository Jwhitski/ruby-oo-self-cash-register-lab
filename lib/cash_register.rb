class CashRegister
    attr_accessor :discount, :price, :total, :items
    
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @title = title #potato
        @price = price * quantity # 5 * 3 = 15
        @total += @price # 15
        while quantity.positive?
        @items << title
        quantity -= 1
        end
    end

    def apply_discount
        if @discount > 0
        @total -= @total * @discount / 100
        "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @price
        @total
    end

end

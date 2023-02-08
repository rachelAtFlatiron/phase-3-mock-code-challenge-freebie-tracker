class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.any? { |freebie| freebie.item_name == item_name }
    end

    #self give freebie to dev (if freebie belongs to self)
    def give_away(dev, freebie)
        if self.received_one?(freebie.item_name)
            freebie.update(dev_id: dev.id)
        end
    end 

end

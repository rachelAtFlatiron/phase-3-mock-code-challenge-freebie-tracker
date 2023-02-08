class Dev < ActiveRecord::Base
    has_many :freebies 
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.any? do |freebie|
            freebie.item_name == item_name
        end
    end

    def give_away(dev, freebie)
        #check if freebie belongs to current dev
        if(freebie.dev_id == self.id)
            #UPDATE IN DB
            freebie.update(dev_id: dev.id)
        end
        nil
    end
end

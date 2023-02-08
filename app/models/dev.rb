class Dev < ActiveRecord::Base
    has_many :freebies 
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.any? do |freebie|
            freebie.item_name == item_name
        end
    end

    #save d1, d2
    #running give away twice and showing d1, d2 
    #may not reflect update
    #however Dev.first or Dev.second will
    #and it will show in the database
    def give_away(dev, freebie)
        #check if freebie belongs to current dev
        if(freebie.dev_id == self.id)
            #UPDATE IN DB
            freebie.update(dev_id: dev.id)
        end
        nil
    end
end

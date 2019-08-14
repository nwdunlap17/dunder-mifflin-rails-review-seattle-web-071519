class Employee < ApplicationRecord
    belongs_to :dog

    def to_s
        "#{self.first_name} #{self.last_name}"
    end


    def here_boy #returns name of dog
        self.dog.name
    end
end

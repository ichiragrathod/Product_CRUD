class Product < ApplicationRecord
    validates :name, presence: true, length:{minimum:2, maximum:100}
    validates :description, presence: true,length:{minimum:2, maximum:500}
    validates :stock, presence: true,length: { is: 5 }
    validates :price, presence: true,length: { is: 8 }
end
end
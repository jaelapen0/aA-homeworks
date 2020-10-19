class Cat < ApplicationRecord
    include Toyable
    has_many :toys as: :toyables
end

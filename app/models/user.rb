class User < ApplicationRecord
    has_many :creatures, dependent: :destroy
end

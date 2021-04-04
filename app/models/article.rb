class Article < ApplicationRecord
    has_many :posts, dependent: :destroy
end

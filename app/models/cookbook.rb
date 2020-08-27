class Cookbook < ApplicationRecord
    has_many :cookbook_recipes
    has_many :recipes, through: :cookbook_recipes
    has_many :cookbook_lists
    has_many :users, through: :cookbook_lists
end

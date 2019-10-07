class Recipe < ApplicationRecord
  enum classification: [:traditional, :keto, :vegan, :vegetarian]
  enum cooking_method: [:stove_top, :microwave, :oven, :bbq]
  enum protein_type: [:chicken, :pork, :beef, :tofu, :egg]

  validates :title, presence: true
  validates :cook_time, presence: true

  def times
    "Cook Time: #{cook_time} - Prep Time: #{prep_time}"
  end
end

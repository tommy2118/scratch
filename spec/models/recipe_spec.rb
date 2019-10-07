require "rails_helper"

RSpec.describe Recipe, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:cook_time) }
end

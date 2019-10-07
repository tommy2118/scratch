require "rails_helper"

RSpec.describe "Recipe management", type: :system do
  it "enables the ability to create a recipe" do
    visit "/recipes/new"

    fill_in "Title", with: "Scrambled Eggs"
    fill_in "Prep time", with: 5
    fill_in "Cook time", with: 30
    select "Traditional", from: "Classification"
    select "Stove top", from: "Cooking method"
    select "Egg", from: "Protein type"
    find_button("Submit").click
    expect(page).to have_text("Recipe successfully created.")
  end
end

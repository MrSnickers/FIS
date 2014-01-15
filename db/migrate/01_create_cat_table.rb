class CreateCatTable < ActiveRecord::Migration

  def change
    create_table :space_cats do |t|
      t.string :name
      t.string :home_planet
      t.string :tagline
      t.string :superpower

      t.timestamps
    end

  end


end
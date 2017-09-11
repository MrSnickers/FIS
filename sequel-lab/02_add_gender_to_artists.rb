# 02_add_gender_to_artists.rb

Sequel.migration do
  change do
    add_column :artists, :gender, String
  end
end
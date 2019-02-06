class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name, presence: true
      t.integer :zip_code, presence: true

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, presence: true
      t.string :last_name, presence: true
      t.text :description, presence: false
      t.string :email, presence: true
      t.integer :age, presence: false
      
      t.belongs_to :citie, index: true

      t.timestamps
    end
  end
end

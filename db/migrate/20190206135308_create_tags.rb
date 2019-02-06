class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name, presence: true
      
      t.belongs_to :gossip, index: true, presence: true

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body

      t.belongs_to :user, index: true, presence: true
      t.belongs_to :gossip, index: true, presence: true
      t.belongs_to :comments, index: true, polimorphic: true, presence: false

      t.timestamps
    end
  end
end

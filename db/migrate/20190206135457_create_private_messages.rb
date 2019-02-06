class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|

      t.belongs_to :user, index: true

      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end

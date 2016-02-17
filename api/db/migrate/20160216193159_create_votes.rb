class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :value
      t.references :badge, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

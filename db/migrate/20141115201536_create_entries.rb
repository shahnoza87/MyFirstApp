class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.date :date
      t.string :contents

      t.timestamps
    end
  end
end

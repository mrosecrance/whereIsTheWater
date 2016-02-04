class CreateWhitewaterRuns < ActiveRecord::Migration
  def change
    create_table :whitewater_runs do |t|
      t.string :description
      t.string :name
      t.integer :whitewater_class

      t.timestamps null: false
    end
  end
end

class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.string :data

      t.timestamps null: false
    end
  end
end

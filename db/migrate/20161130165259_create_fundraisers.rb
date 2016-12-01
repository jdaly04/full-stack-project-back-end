class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :city

      t.timestamps null: false
    end
  end
end

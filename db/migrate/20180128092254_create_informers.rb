class CreateInformers < ActiveRecord::Migration
  def change
    create_table :informers do |t|
      t.string :fname
      t.string :lname

      t.timestamps null: false
    end
  end
end

class CreateBiographies < ActiveRecord::Migration
  def change
    create_table :biographies do |t|
      t.string :name
      t.string :full_name
      t.string :bio
      t.string :redacted_bio

      t.timestamps
    end
  end
end

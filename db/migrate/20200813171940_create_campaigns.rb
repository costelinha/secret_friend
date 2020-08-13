class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.text :description
      t.references :user, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end

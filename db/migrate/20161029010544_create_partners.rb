class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :website
      t.string :name
      t.boolean :sells_app_exchange_apps
      t.text :description

      t.timestamps
    end
  end
end

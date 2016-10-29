class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :partner, index: true
      t.string :title
      t.text :body
      t.boolean :engaged_as_app_exchange_partner

      t.timestamps
    end
  end
end

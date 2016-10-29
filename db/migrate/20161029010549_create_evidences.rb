class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.references :review, index: true
      t.string :image_url
      t.text :code
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end

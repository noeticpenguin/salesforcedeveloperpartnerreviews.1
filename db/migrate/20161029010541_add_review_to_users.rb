class AddReviewToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :review, index: true
  end
end

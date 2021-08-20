class AddReviewToRents < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :review, :text
  end
end

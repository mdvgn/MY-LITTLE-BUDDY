class AddReviewRatingToRents < ActiveRecord::Migration[6.0]
  def change
    add_column :rents, :rating, :integer
  end
end

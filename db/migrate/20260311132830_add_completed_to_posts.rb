class AddCompletedToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :completed, :boolean, default: false
  end
end

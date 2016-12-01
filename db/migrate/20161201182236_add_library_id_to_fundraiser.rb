class AddLibraryIdToFundraiser < ActiveRecord::Migration
  def change
    add_column :fundraisers, :library_id, :integer
  end
end

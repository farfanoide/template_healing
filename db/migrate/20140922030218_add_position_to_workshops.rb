class AddPositionToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :position, :integer
  end
end

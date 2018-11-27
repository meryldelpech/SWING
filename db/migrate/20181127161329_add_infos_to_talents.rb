class AddInfosToTalents < ActiveRecord::Migration[5.2]
  def change
    add_column :talents, :infos, :text
  end
end

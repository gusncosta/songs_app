class ChangeInstrumentalnessToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :songs, :instrumentalness, :float
  end
end

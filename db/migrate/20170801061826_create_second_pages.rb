class CreateSecondPages < ActiveRecord::Migration[5.0]
  def change
    create_table :second_pages do |t|

      t.timestamps
    end
  end
end

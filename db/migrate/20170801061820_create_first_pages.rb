class CreateFirstPages < ActiveRecord::Migration[5.0]
  def change
    create_table :first_pages do |t|

      t.timestamps
    end
  end
end

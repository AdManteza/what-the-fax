class CreateFaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :faxes do |t|

      t.timestamps
    end
  end
end

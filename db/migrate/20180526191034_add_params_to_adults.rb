class AddParamsToAdults < ActiveRecord::Migration[5.1]
  def change
    create_table :adults do |t|
      t.string :adult_title
      t.string :link
      t.string :description
      t.timestamps
    end
  end
end

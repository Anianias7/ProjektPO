class CreateApplicationFormAdjustments < ActiveRecord::Migration[5.1]
  def change
    create_table :application_form_adjustments do |t|
      t.integer :application_form_id
      t.text :description

      t.timestamps
    end
  end
end

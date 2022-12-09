class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :current_status
      t.string :changed_status
      t.references :applicant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

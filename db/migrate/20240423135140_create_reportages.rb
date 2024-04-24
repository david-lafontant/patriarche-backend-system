class CreateReportages < ActiveRecord::Migration[7.0]
  def change
    create_table :reportages do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

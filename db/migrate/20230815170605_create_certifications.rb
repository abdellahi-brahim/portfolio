class CreateCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :certifications do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.references :education, null: false, foreign_key: true

      t.timestamps
    end
  end
end

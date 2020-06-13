class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :title
      t.string :tags
      t.string :date
      t.string :applied
      t.string :employer_replies
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

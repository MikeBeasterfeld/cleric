class CreateCmsTemplates < ActiveRecord::Migration
  def change
    create_table :cms_templates do |t|
      t.string :page
      t.text :template

      t.timestamps
    end
  end
end

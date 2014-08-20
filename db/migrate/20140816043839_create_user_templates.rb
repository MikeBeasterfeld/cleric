class CreateUserTemplates < ActiveRecord::Migration
  def change
    create_table :user_templates do |t|

      t.timestamps
    end
  end
end

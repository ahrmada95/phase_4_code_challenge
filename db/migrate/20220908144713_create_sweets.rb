class CreateSweets < ActiveRecord::Migration[6.1]
  def change
    change:vendor_sweets do |t|
      t.belongs_to :vendor, index: true, foreign_key: true
      t.belongs_to :sweet, index: true, foreign_key:true
    end
  end
end

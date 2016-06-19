class CreateStatutories < ActiveRecord::Migration
  def change
    create_table :statutories do |t|
      t.string :reg_no
      t.string :reg_authority
      t.string :cin_no
      t.string :tan_no
      t.string :pan_no
      t.string :service_tax_no
      t.string :excise_reg_no
      t.string :tin_no
      t.string :dgft
      t.string :cst_no
      t.string :ssi_no
      t.string :epf_no
      t.string :esi_no
      t.string :sct_no
      t.string :dnb_no
      t.string :rbi_no
      t.string :fssai
      t.string :nsic_no
      t.string :sst_no
      t.string :created_by
      t.string :updated_by
      t.string :deleted_by
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

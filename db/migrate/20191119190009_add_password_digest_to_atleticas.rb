class AddPasswordDigestToAtleticas < ActiveRecord::Migration[6.0]
  def change
    add_column :atleticas, :password_digest, :string
  end
end

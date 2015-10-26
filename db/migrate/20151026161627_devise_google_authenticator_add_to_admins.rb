class DeviseGoogleAuthenticatorAddToAdmins < ActiveRecord::Migration
  def self.up
    change_table :admins do |t|
      t.string  :gauth_secret
      t.string  :gauth_enabled, :default => "t"
      t.string  :gauth_tmp
      t.datetime  :gauth_tmp_datetime
    end

  end

  def self.down
    change_table :admins do |t|
      t.remove :gauth_secret, :gauth_enabled, :gauth_tmp, :gauth_tmp_datetime
    end
  end
end

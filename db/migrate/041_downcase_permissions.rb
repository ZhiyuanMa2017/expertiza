class DowncasePermissions < ActiveRecord::Migration
  def self.up
    permissions = Permission.all
    permissions.each  do |permission|
      permission.name = permission.name.downcase
      permission.save
    end
    Role.rebuild_cache
  end

  def self.down
    permissions = Permission.all
    permissions.each  do |permission|
      permission.name = permission.name.downcase
      permission.save
    end
  end
end

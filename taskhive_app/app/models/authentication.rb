require 'yaml'

class Authentication
  USERS_FILE = Rails.root.join('config', 'users.yml')

  def self.load_users
    YAML.load_file(USERS_FILE) || {}
  rescue Errno::ENOENT
    {}
  end

  def self.valid_credentials?(username, password)
    users = load_users
    users[username] == password
  end
end

require_relative '../models/user'

namespace :user do
  desc 'Add a new user'
  task :add, [:email, :group] do |_t, args|
    User.add(args[:email], args[:group])
  end
end

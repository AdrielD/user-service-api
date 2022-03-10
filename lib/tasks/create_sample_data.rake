# frozen_string_literal: true

desc "Creates a sample user and it's dependencies for development"

namespace :sample do
  task user: [:environment] do
    user = User.create(email: 'a@a.com', password: 'abc123')
    Profile.create(username: 'me', name: 'Me', birthday: Time.zone.now, phone: '+5511987654321', user: user)
  end
end

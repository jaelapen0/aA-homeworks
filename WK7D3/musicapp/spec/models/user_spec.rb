require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  #describe 'associations' do
    subject {User.new(email: 'kefe', password_digest: 'dfddfdfdfdfdfd', session_token: 'dfdifdsfsfjsdfidfidi')}
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:password_digest)}
    it {should validate_presence_of(:session_token)}
 # end

end

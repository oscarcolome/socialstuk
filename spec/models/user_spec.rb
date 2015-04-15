require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'create a user' do
    context 'with valid attributes' do
      before do
        @user = FactoryGirl.build(:user)
      end

      it { expect(@user).to be_valid }
    end

    context 'with invalid attributes' do
      before { @user = FactoryGirl.build(:invalid_user)}

      it { expect(@user).not_to be_valid}
    end
  end
end

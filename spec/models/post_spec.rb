require 'rails_helper'

RSpec.describe Post, type: :model do

  describe 'create a post' do
    context 'with valid attributes' do
      before do
        @post = FactoryGirl.build(:post)
      end

      it 'should create a post' do
        expect(@post).to be_valid
      end
    end

    context 'with invalid attributes' do
      before do
        @post = FactoryGirl.build(:invalid_post)
      end

      it 'should not create a post' do
        expect(@post).not_to be_valid
      end
    end
  end
end

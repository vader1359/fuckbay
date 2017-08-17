require 'rails_helper'

RSpec.describe User, type: :model do
  
  context "When save/validate a user" do
    it "should not signup without name" do
      
      user = User.new(email: "ian@gmail.com", password: "abcdef")
      user.save
      # expect(["Name errors"]).to eq(user.errors.full_messages)
      expect(["Name can't be blank"]).to eq(user.errors.full_messages)
      
    end
    
  end
  
  
  
  context "When call the relationship between User and other class" do
    before(:each) do
      @user = User.create(name: "ian", email: "ian@gmail.com", password: "abcdef")
    end
    
    
    context "Dealing with posts model" do
      
      it "user should not create a post without body" do
        post = @user.posts.new
        post.save
        # expect(["Body error"]).to eq(post.errors.full_messages)
        # expect(["Body can't be blank", "Author must exist"]).to eq(post.errors.full_messages)
        expect(["Body can't be blank"]).to eq(post.errors.full_messages)
      end
    end
    
    context "Dealing with Like model" do
      it "user should not create a like without item" do
        like = @user.likes.new
        like.save
        expect(["Item must exist"]).to eq(like.errors.full_messages)
      end
      
      it "user should create a like by pass an item type Post as parameber" do
        post = Post.create(body: "I have a dream")
        like = @user.likes.new(item_id: post.id)
        # expect("Like error").to eq(like.errors.full_messages)
        expect([]).to eq(like.errors.full_messages)
      end

      it "user should create a like by passing an item_id, type User" do
        user = User.create(name: "Tan", email: "tan@gmail.com", password: "abcdef")
        like = @user.likes.new(item_id: user.id)
        # expect("LIKE ERROR").to eq(like.errors.full_messages)
        expect([]).to eq(like.errors.full_messages)
      end

      it "If there is no like available in the post, the toggle_like method should create a new like " do
        user = User.create(name: "Tan", email: "tan@gmail.com", password: "abcdef")
        post = Post.create(author_id: user.id, body: "I have a dream")
        user.toggle_like!(post)
        like = Like.last
        expect(like.user_id).to eq(user.id)
        expect(like.item_type).to eq("Post")
        expect(like.item_id).to eq(post.id)
        
      end

      it "If there is a like available in the post, the toggle_like method should destroy that Like" do
        user = User.create(name: "Tan", email: "tan@gmail.com", password: "abcdef")
        post = Post.create(author_id: user.id, body: "I have a dream")
        post.likes.create(user_id: user.id)
        user.toggle_like!(post)
        like = Like.last
        # expect("abc").to eq(like)
        expect(nil).to eq(like)
      end

      # it "If there is like available in the post, the toggle_like method should destroy that like" do
      #   user = User.create(name: "Tan", email: "tan@gmail.com", password: "abcdef")
      #   post = Post.create(body: "I have a dream")
      #   if post.likes.find_by(author_id: user.id).present?
      #   end
      # end


    end
  end
end

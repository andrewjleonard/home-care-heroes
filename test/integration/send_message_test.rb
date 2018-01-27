require 'test_helper'

class SendMessageTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:one)
    @user1 = users(:one)
    @user2 = users(:two)
    @message = messages(:one)
  end


  test "can send a message" do
    get "/messages/new", params: {id: @user2.id}
    assert_response :success

    post "/messages",
    params: { message: { body: @message.body, recipient_id: @user1.id, sender_id: @user2.id, title: @message.title } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Message was successfully created."
  end

end

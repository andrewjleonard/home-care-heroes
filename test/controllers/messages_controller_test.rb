require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @message = messages(:one)
    @user = users(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get messages_url
    assert_response :success
  end

  test "should get new" do
    get "/messages/new", params: {id: @user.id}
    assert_response :success
  end

  test "should show message" do
    get message_url(@message)
    assert_response :success
  end

end

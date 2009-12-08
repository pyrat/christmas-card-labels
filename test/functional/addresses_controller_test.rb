require File.dirname(__FILE__) + '/../test_helper'

# make sure the secret for request forgery protection is set (views will
# explicitly use the form_authenticity_token method which will fail otherwise)
AddressesController.request_forgery_protection_options[:secret] = 'test_secret'

class AddressesControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    get :index, :format => 'ext_json'
    assert_response :success
  end

  def test_should_create_address
    assert_difference('Address.count') do
      xhr :post, :create, :format => 'ext_json', :address => { }
    end
    assert_response :success
  end

  def test_should_update_address
    xhr :put, :update, :format => 'ext_json', :id => addresses(:one).id, :address => { }
    assert_response :success
  end

  def test_should_destroy_address
    assert_difference('Address.count', -1) do
      xhr :delete, :destroy, :id => addresses(:one).id
    end
    assert_response :success
  end
end

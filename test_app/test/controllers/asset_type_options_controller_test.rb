require 'test_helper'

class AssetTypeOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset_type_option = asset_type_options(:one)
  end

  test "should get index" do
    get asset_type_options_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_type_option_url
    assert_response :success
  end

  test "should create asset_type_option" do
    assert_difference('AssetTypeOption.count') do
      post asset_type_options_url, params: { asset_type_option: { asset_type_id_id: @asset_type_option.asset_type_id_id, field_name: @asset_type_option.field_name, string: @asset_type_option.string } }
    end

    assert_redirected_to asset_type_option_url(AssetTypeOption.last)
  end

  test "should show asset_type_option" do
    get asset_type_option_url(@asset_type_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_type_option_url(@asset_type_option)
    assert_response :success
  end

  test "should update asset_type_option" do
    patch asset_type_option_url(@asset_type_option), params: { asset_type_option: { asset_type_id_id: @asset_type_option.asset_type_id_id, field_name: @asset_type_option.field_name, string: @asset_type_option.string } }
    assert_redirected_to asset_type_option_url(@asset_type_option)
  end

  test "should destroy asset_type_option" do
    assert_difference('AssetTypeOption.count', -1) do
      delete asset_type_option_url(@asset_type_option)
    end

    assert_redirected_to asset_type_options_url
  end
end

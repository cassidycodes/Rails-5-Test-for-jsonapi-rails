require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "it deserializes jsonapi params" do
    post test_index_url,
         params: {
           _jsonapi: {
              data: {
                "type" => "test_data",
                "attributes" => {
                  "foo" => "bar"
                }
              }
            }
         }

    resp = JSON.parse(response.body)
    assert_equal({ "type" => "test_data", "foo" => "bar" }, resp)
  end
end

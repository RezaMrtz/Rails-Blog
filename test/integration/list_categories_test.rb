# frozen_string_literal: true

require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
  # Setup
  def setup
    @category = Category.create(name: 'sports')
    @category = Category.create(name: 'programming')
  end
  # Tests
  test 'should show category listing' do
    assert_template 'categories/index'
    assert_select 'a[href=?]', category_path(@category), text: @category.name
    assert_select 'a[href=?]', category_path(@category2), text: @category2.name
  end

  test '' do
  end
end

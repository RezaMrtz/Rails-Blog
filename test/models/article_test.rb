# frozen_string_literal: true

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = Article.new(title: 'foo', body: 'In anim aute ipsum consequat pariatur fugiat elit pariatur.')
  end

  test 'article should be valid' do
    assert @article.valid?
  end
  test 'name should be preset' do
  end
  test 'case3' do
  end
  test 'case4' do
  end
  test 'case5' do
  end
  test 'case6' do
  end
end

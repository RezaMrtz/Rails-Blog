# frozen_string_literal: true

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(body: 'lorem ipsum')
  end

  test 'comment should be valid' do
    assert @comment.valid?
  end
end

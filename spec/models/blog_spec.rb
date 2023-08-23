require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'is valid with valid attributes' do
    blog_1 = Blog.create(title: 'Visiting 50 States', content: 'Travel across USA')
    expect(blog_1).to be_valid
  end

  it 'is not valid without a title' do
    blog_1 = Blog.create(content: 'Travel across USA')
    expect(blog_1.errors[:title]).to_not be_empty
  end

  it 'is not valid without a content' do
    blog_1 = Blog.create(title: 'Visiting 50 States')
    expect(blog_1.errors[:content]).to_not be_empty
  end

  it 'does not allow duplicate title' do
    blog_1 = Blog.create(title: 'Visiting 50 States', content: 'Travel across USA')
    blog_2 = Blog.create(title: 'Visiting 50 States', content: 'List of TV Shows')
    expect(blog_2.errors[:title]).to_not be_empty
  end

  it 'is not valid if title is less than four characters long' do
    blog_3 = Blog.create(title: 'And', content: 'Words')
    expect(blog_3.errors[:title]).to_not be_empty
  end

  it 'is not valid if content is less than ten characters long' do
    blog_4 = Blog.create(title: 'Top 5 Games', content: 'Gaming')
    expect(blog_4.errors[:content]).to_not be_empty
  end
end

Rails.application.routes.draw do
  get 'blogs' => 'blog#index', as: 'blogs'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  get 'blogs/:id/edit' => 'blog#edit', as: 'edit_blog'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  post 'blogs' => 'blog#create'
  delete 'blogs/:id' => 'blog#destroy'
  patch 'blogs/:id' => 'blog#update'
  root 'blog#index'
end

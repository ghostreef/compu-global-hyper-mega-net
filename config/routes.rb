Rails.application.routes.draw do
  root 'welcome#index'

  scope ':locale' do
    get '', to: 'welcome#index'
    get 'welcome/index'
  end

end

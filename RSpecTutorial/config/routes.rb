Rails.application.routes.draw do
  get('status' => 'status#index')
  get('consoles' => 'consoles#index')
  get('consolesMft' => 'consoles#consolesMft')
  get('consolesByMft' => 'consoles#consolesByMft')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

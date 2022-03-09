Rails.application.routes.draw do

   root "products#index"
   get 'product_delete/:id', to:'products#destroy', as: :product_delete
   resources :products
end

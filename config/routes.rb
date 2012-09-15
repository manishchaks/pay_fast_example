PayFastExample::Application.routes.draw do
  scope 'pay_fast' do
    match 'paid'    => 'pay_fast#paid',    :as => :pay_fast_paid
    match 'success' => 'pay_fast#success', :as => :pay_fast_success
    match 'cancel'  => 'pay_fast#cancel',  :as => :pay_fast_cancel
    match 'form'    => 'pay_fast#form'
  end
end

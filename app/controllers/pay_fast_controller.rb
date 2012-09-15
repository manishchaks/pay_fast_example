class PayFastController < ApplicationController
  include ActiveMerchant::Billing::Integrations

  # ITN request
  def paid
    notify = PayFast::Notification.new(request.raw_post)

    if notify.acknowledge
      if notify.complete?
        puts 'COMPLETE'
        puts notify.transaction_id
      else
        puts 'Something went wrong'
      end
    else
      puts 'fail'
    end

    render :text => :nothing
  end

  # cancel payment
  def cancel
    render :text => "cancel url return"
  end

  # simple redirect
  def success
    render :text => "success url return"
  end
end

if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_xhlAfp07P0cDPjJF6v7PT84Y',
    :secret_key => 'sk_test_v59TB9XLj1CmEyxaEeb5mv5F'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
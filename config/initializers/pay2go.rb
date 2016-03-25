Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id =  "11473682"
    pay2go.hash_key =     "nYM2tXP6e8IB6JMKvAMgH5r8UhdSOwHb"
    pay2go.hash_iv =      "uueXr33FcMgiv321"
    pay2go.service_url =  "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id =  "11473682"
    pay2go.hash_key =     "nYM2tXP6e8IB6JMKvAMgH5r8UhdSOwHb"
    pay2go.hash_iv =      "uueXr33FcMgiv321"
    pay2go.service_url =  "https://capi.pay2go.com/MPG/mpg_gateway"
  end
end

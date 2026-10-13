require 'sinatra'

get '/robiul_techie_gmail_com' do
  x_str = params['x']
  y_str = params['y']

  if valid_integer?(x_str) && valid_integer?(y_str)
    x = x_str.to_i
    y = y_str.to_i
    
    result = x.lcm(y)
    
    content_type 'text/plain'
    result.to_s
  else
    content_type 'text/plain'
    'NaN'
  end
end

def valid_integer?(str)
  str != nil && str.match?(/\A\d+\z/)
end
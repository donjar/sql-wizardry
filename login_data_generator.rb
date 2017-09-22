1000.times do
  user_id = Random.rand(1..9_999_999)
  domain = %w[google.com facebook.com amazon.com reddit.com
              youtube.com nushackers.org github.com].sample
  country = %w[SG JP US GB KR].sample
  puts "INSERT INTO login_data VALUES (#{user_id}, '#{domain}', '#{country}');"
end

1000.times do
  matric = "A#{Random.rand(1_000_000).to_s.rjust(7, '0')}" \
    "#{('A'..'Z').to_a.sample}"
  date = "#{Random.rand(2010..2015)}-#{Random.rand(1..12).to_s.rjust(2, '0')}" \
    "-#{Random.rand(1..28).to_s.rjust(2, '0')}"
  interval = "#{Random.rand(3..4)} years #{Random.rand(1..12)} months"
  faculty = %w[Computing Engineering Science Arts].sample
  cap = Random.rand(3.0..5.0).round(2)
  puts "INSERT INTO nus_students VALUES ('#{matric}', '#{date}', " \
    "'#{interval}', '#{faculty}', '#{cap}');"
end

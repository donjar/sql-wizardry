1.upto(500) do |uid|
  1.upto(3) do |pid|
    next if ((uid + pid) % 7).zero?
    score = Random.rand(10)
    puts "INSERT INTO contest_scores VALUES (#{uid}, #{pid}, #{score});"
  end
end

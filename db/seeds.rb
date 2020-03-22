10.times do
  status = Article.statuses.keys.sample
  published_at = status == "published" ? Time.zone.now : nil
 
  Article.create title: FFaker::Lorem.sentence,
    content: FFaker::Lorem.sentences.join(" "),
    status: status, published_at: published_at
end

10.times do
  status = Book.statuses.keys.sample
  published_at = status == "published" ? Time.zone.now : nil
 
  Book.create title: FFaker::Lorem.sentence,
    content: FFaker::Lorem.sentences.join(" "),
    status: status, published_at: published_at
end

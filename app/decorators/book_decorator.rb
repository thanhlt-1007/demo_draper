class BookDecorator < Draper::Decorator
  def publication_status
    return "Drafting" if drafting?
    "Published at #{published_at.strftime("%A, %B %e")}"
  end
end

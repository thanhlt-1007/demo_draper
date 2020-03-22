class ArticleDecorator < ApplicationDecorator
  def self.collection_decorator_class
    PaginatingDecorator
  end

  def publication_status
    return "Drafting" if drafting?
    "Published at #{published_at.strftime("%A, %B %e")}"
  end

  def emphatic
    h.content_tag(:strong, "Awesome")
  end
end

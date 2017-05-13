class Article < ApplicationRecord
  belongs_to :author
  has_many :comments

  def self.text_search(query)
    if query.present?
      where("name @@ :q or content @@ :q", q: query)
    else
      Article.all
    end
  end
end

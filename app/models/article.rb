class Article < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  validate :content, :content_character_length

  def content_character_length
    if content.to_plain_text.size < 270
      errors.add(:content, "content must be more than 270 characters")
    end
  end
end

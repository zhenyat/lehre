class Entry < ApplicationRecord
  has_many :samples
  accepts_nested_attributes_for :samples, allow_destroy: true, 
            reject_if: proc {|attr| attr['de'].blank? or attr['ru'].blank?}
  
  enum pos: %w(Adjektiv Adverb Artikel Ausdruck Interjektion Konjuktion Nomen Numerale Partikel Personalpronoun Präposition Pronomen Verb)
  enum art: %w(n/a der die das)
  
  validates :de,   presence: true
  validates :en,   presence: true
  validates :ru,   presence: true
  
  # Validate Nomen
  validate :check_article
  validate :check_plural
  
  def check_article
#    errors.add(:base, "Artikel für Nomen auswählen") if (pos == "Nomen" && art == 'n/a')
    errors.add(:base, "Select article for noun") if (pos == "Nomen" && art == 'n/a')
  end
  
  def check_plural
#    errors.add(:base, "Plural für Nomen hinzufüge") if (pos == "Nomen" && pl.blank?)
    errors.add(:base, "Add plural for noun") if (pos == "Nomen" && pl.blank?)
  end
end

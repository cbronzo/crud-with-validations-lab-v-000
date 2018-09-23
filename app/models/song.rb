class Song < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :title, uniqueness: { scope: :release_year }
  # validates :released, inclusion: {in: %w(true false)}
  validates :release_year, presence: true, if: :released?
  validates :artist_name, presence: true
  
  
  def released?
    released == true
  end
  
end

class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.get_movies_by_same_dir(director_name)
    if director_name!="" or !director_name.nil?
      find(:all, :conditions => { :director => director_name})
    end
  end
end

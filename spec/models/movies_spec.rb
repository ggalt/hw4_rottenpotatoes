require 'spec_helper'

describe Movie do
  describe 'find movies with the same director' do
    describe 'no director is given' do
      it 'should return an empty array of movies' do
        Movie.get_movies_by_same_dir(nil).should == []
        Movie.get_movies_by_same_dir("").should == []
      end
    end
    
    describe 'given a director, get all movies that were produced by that same director' do
      it 'should find all movies with a given director' do
        Movie.should_receive(:find_all_by_director).with('MovieDirector')
        Movie.get_movies_by_same_dir('MovieDirector')
      end 
    end
  end
end

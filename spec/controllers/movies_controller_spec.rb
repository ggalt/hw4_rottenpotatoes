require 'spec_helper'

describe MoviesController do
  describe 'find movie with same director' do 
    before :each do
      @fake_results = [mock('Movie1'), mock('Movie2')]
    end
    
    it 'should call the method to find all movies with the same director' do
      # get 'find_same_director', :id => '0'
      #Movie.stub(:find).with({:id=>'0'}).and_return(mock('Movie', :director => 'MovieDirector'))
       Movie.stub(:find_by_id).and_return(mock('Movie', :director => 'MovieDirector'))
      #Movie.stub(:find_same_director).and_return(@fake_results)
      Movie.should_receive(:find_same_director).with('MovieDirector').and_return(@fake_results)
      get 'find_same_director', {:id => '0'}
    end
    
    it 'should select the find_same_director template for rendering' do
      response.should render_template('find_same_director')
    end
    
    it 'should make the search results available to that template'
  end
  # describe 'can't find similar movies if we don't know director (sad path)' do
  # end
end


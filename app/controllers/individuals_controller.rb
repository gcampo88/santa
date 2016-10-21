class IndividualsController < ApplicationController

  def pairs
    @pairs = Individual.generate_pairs
    render :pairs
  end

end

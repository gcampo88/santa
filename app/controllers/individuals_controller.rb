class IndividualsController < ApplicationController

  def pairs
    @pairs = Individual.generate_pairs
    render json: @pairs
  end

end

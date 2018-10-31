class StaticPagesController < ApplicationController
 
  def home
    "hello"
  end

  helper_method :home
end

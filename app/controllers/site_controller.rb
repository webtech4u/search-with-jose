class SiteController < ApplicationController
  def search
    term = params[:term]
    return if term.blank?
    @results = []
    [Artist, Album, Label].each do |model|
      @results += model.search term
   end
  end
end

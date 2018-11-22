class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end

  def home
    @flats = Flat.all
    render template: 'pages/home'
  end
end

class PagesController < ApplicationController
  def root; end
  def about; end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    if params[:member]
      @members = @members.select {|member| member.start_with?(params[:member])}
    end
  end
end

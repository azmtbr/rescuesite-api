class AdoptionNoticeController < ApplicationController
  def create
    AdoptionFormMailer.send_notice(params[:message], params[:link]).deliver_now
  end
end

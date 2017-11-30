class FileUploadsController < ApplicationController
  def new
    @bucket = Bucket.find(params[:bucket_id])
  end
end

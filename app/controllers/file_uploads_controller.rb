class FileUploadsController < ApplicationController
  def new
    @bucket = Bucket.find(params[:bucket_id])
  end

  def create
    @bucket = Bucket.find(params[:bucket_id])
    @bucket.files.attach(params[:bucket][:files])
    redirect_to bucket_path(@bucket)
  end
end

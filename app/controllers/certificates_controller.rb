class CertificatesController < ApplicationController
  before_action :set_certificate, only: [:show, :edit, :update, :destroy]

  def index
    @certificates = Certificate.all
  end

  def show
  end

  def new
    @certificate = Certificate.new
  end

  def edit
  end

  def create
    @certificate = Certificate.new(certificate_params)

    respond_to do |format|
      if @certificate.save
        format.html { redirect_to @certificate, notice: 'Certificate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @certificate }
      else
        format.html { render action: 'new' }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @certificate.update(certificate_params)
        format.html { redirect_to @certificate, notice: 'Certificate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @certificate.destroy
    respond_to do |format|
      format.html { redirect_to certificates_url }
      format.json { head :no_content }
    end
  end

  private

    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    def certificate_params
      params.require(:certificate).permit(:name)
    end
end

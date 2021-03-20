class ContactPhonesController < ApplicationController
  before_action :set_contact_phone, only: %i[ show edit update destroy ]

  def index
    @contact_phones = ContactPhone.all
  end

  def show
  end

  def new
    @contact_phone = ContactPhone.new
  end

  def edit
  end

  def create
    @contact_phone = ContactPhone.new(contact_phone_params)

    respond_to do |format|
      if @contact_phone.save
        format.html { redirect_to @contact_phone, notice: "Contact phone was successfully created." }
        format.json { render :show, status: :created, location: @contact_phone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @contact_phone.update(contact_phone_params)
        format.html { redirect_to @contact_phone, notice: "Contact phone was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_phone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @contact_phone.destroy
    respond_to do |format|
      format.html { redirect_to contact_phones_url, notice: "Contact phone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_contact_phone
      @contact_phone = ContactPhone.find(params[:id])
    end

  
    def contact_phone_params
      params.require(:contact_phone).permit(:name, :email, :phone)
    end
end

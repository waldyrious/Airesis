class SysPaymentNotificationsController < ApplicationController

  #def index
  #  @sys_payment_notifications = SysPaymentNotification.all

  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @sys_payment_notifications }
  #  end
  #end

  # GET /sys_payment_notifications/1
  # GET /sys_payment_notifications/1.json
  #def show
  #  @sys_payment_notification = SysPaymentNotification.find(params[:id])
  #
  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.json { render json: @sys_payment_notification }
  #  end
  #end

  # GET /sys_payment_notifications/new
  # GET /sys_payment_notifications/new.json
  #def new
  #  @sys_payment_notification = SysPaymentNotification.new
  #
  #  respond_to do |format|
  #    format.html # new.html.erb
  #    format.json { render json: @sys_payment_notification }
  #  end
  #end

  # GET /sys_payment_notifications/1/edit
  #def edit
  #  @sys_payment_notification = SysPaymentNotification.find(params[:id])
  #end

  # POST /sys_payment_notifications
  # POST /sys_payment_notifications.json
  def create
    SysPaymentNotification.create!(:params => params, :sys_feature_id => params[:invoice], :status => params[:payment_status], :transaction_id => params[:txn_id])
    render nothing: true
  end

  # PUT /sys_payment_notifications/1
  # PUT /sys_payment_notifications/1.json
  #def update
  #  @sys_payment_notification = SysPaymentNotification.find(params[:id])

  #  respond_to do |format|
  #    if @sys_payment_notification.update_attributes(params[:sys_payment_notification])
  #      format.html { redirect_to @sys_payment_notification, notice: 'Sys payment notification was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @sys_payment_notification.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /sys_payment_notifications/1
  # DELETE /sys_payment_notifications/1.json
  #def destroy
  #  @sys_payment_notification = SysPaymentNotification.find(params[:id])
  #  @sys_payment_notification.destroy
  #
  #  respond_to do |format|
  #    format.html { redirect_to sys_payment_notifications_url }
  #    format.json { head :no_content }
  #  end
  #end
end
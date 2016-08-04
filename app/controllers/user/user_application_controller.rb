require 'application_responder'

class User::UserApplicationController < ActionController::Base

  # layout 'user/application'
  layout 'application'
  before_filter :set_audit_user, :set_user_time_zone
  before_action :authenticate_user!

  self.responder = ApplicationResponder
  respond_to :html, :json

  protected

  def set_user_time_zone
    Time.zone = current_user.time_zone if current_user.time_zone.present?
  end

  private

  def set_audit_user
    # Set audit current user
    Audited.current_user_method = :current_user
  end

end
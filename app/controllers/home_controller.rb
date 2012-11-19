class HomeController < ApplicationController
  before_filter :login_required
  
  def index
    @hide_body = true
    # binding.pry

    # puts "che !!!"
    # if current_user.connected_to_intuit? && intuit_token
    #   binding.pry
      #@companies = reconnect_to_intuit_if_needed(Intuit::API.token_get(intuit_token, "https://qblab-ipp-v2r18.intuit.com/api/v1/Account/Entitlements"))
      #if(@companies["EntitlementsResponse"] && @companies["EntitlementsResponse"]["Applications"] && @companies["EntitlementsResponse"]["Applications"]["Application"])
      #  @companies = @companies.select { |obj| obj["MasterAppId"] == AppConfig["intuit_dbid"] }
      #else
      #  @companies = []
      #end
  #   else
  #     binding.pry
  #     redirect_to(account_path)
  #     return false
  #   end
  end
end
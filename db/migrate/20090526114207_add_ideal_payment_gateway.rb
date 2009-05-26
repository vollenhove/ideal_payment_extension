class AddIdealPaymentGateway < ActiveRecord::Migration
  def self.up
    ideal = Gateway.create(
      :clazz => 'ActiveMerchant::Billing::IdealGateway',
      :name => 'iDEAL',
      :description => "Active Merchant's iDEAL Gateway (NL)"
    )
    
    GatewayOption.create(:name => 'merchant_id', :description => 'Your Merchant ID', :gateway_id => ideal.id, :textarea => false)
    GatewayOption.create(:name => 'passphrase', :description => 'the private key passphrase', :gateway_id => ideal.id, :textarea => false)
    GatewayOption.create(:name => 'private_key', :description => 'Private key contents', :gateway_id => ideal.id, :textarea => true)
    GatewayOption.create(:name => 'private_certificate', :description => 'Private cert contents', :gateway_id => ideal.id, :textarea => true)
    
  end

  def self.down
    ideal = Gateway.find_by_name("iDEAL")
    ideal.destroy
  end
end
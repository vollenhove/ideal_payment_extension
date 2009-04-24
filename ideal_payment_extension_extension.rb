# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class IdealPaymentExtensionExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/ideal_payment_extension"

  # Please use ideal_payment_extension/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    # admin.tabs.add "Ideal Payment Extension", "/admin/ideal_payment_extension", :after => "Layouts", :visibility => [:all]
  end
end
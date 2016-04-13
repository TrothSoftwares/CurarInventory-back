class PurchaseMailer < ApplicationMailer
  default from: 'notifications@example.com'

 # def purchaseorder(supplier)
 #   @supplier = supplier
 #   mail(to: @supplier.email, subject: 'Welcome to My Awesome Site')
 # end



 def purchaseorder(purchaseorder)
   @purchaseorder = purchaseorder
   @supplier_email = purchaseorder.supplier.email
   mail(to: @supplier_email, subject: 'New Purchase Order' )








 end


end

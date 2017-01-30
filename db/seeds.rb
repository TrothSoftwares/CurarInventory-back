
User.create(email: 'admin@test.com', password: 'password')
User.create(email: 'msadiq@ocsarabia.com.sa', password: 'ocs321msadiq')
User.create(email: 'admin@ocsarabia.com.sa', password: 'ocs321admin')

probrand1 = Productbrand.create(brandname: 'Select Brand')
# probrand2 = Productbrand.create(brandname: 'brandtwo')

protype1 = Producttype.create(typename: 'Select Product Type')
# protype2 = Producttype.create(typename: 'producttypetwo')

supplier1 = Supplier.create(companyname: 'Select Supplier' , companycode: 'supp1' , chargecode: 'supp1',  email: 'companyone@gmail.com' , address1: 'address1' , address2: 'address2', suburb: 'suburb',city: 'city' , state: 'state' , country: 'country',zipcode:'689672',phone:'04735253585')
# supplier2 = Supplier.create(companyname: 'companytwo' , companycode: 'supp2' , chargecode: 'supp2',   email: 'companytwo@gmail.com' , address1: 'address1' , address2: 'address2', suburb: 'suburb',city: 'city' , state: 'state' , country: 'country',zipcode:'689672',phone:'04735253585')

## edited to delete product one
#product1 =  Product.create(itemcode:'itemonecode',productname:'Select Product' , initialstocklevel: 100.00 , initialcostprice: 100.00, buyprice: 200 ,retailprice: 250 , supplier: supplier1 , producttype: protype1 , productbrand: probrand1)

# product2 =  Product.create(itemcode:'itemonecode',productname:'producttwoname' , initialstocklevel: 50 ,  initialcostprice: 50, buyprice: 50 ,retailprice: 50 , supplier: supplier2 , producttype: protype2 , productbrand: probrand2)
customer1 = Customer.create(companyname: 'Select Customer' , companycode: 'cust1' , chargecode: 'charge1', email: 'companyone@gmail.com' , address1: 'address1' , address2: 'address2', suburb: 'suburb',city: 'city' , state: 'state' , country: 'country',zipcode:'689672',phone:'04735253585')
# customer2 = Customer.create(companyname: 'companytwo' , companycode: 'cust2' , chargecode: 'charge2',  email: 'companytwo@gmail.com' , address1: 'address1' , address2: 'address2', suburb: 'suburb',city: 'city' , state: 'state' , country: 'country',zipcode:'689672',phone:'04735253585')






####
purchaseorder1 = Purchaseorder.create(duedate: '2016-03-25' , recieveddate: '2016-03-24' , totalunits: 10 , totalcost: 1000 , postatus: 'created', supplier: supplier1)
####
order1 = Order.create(duedate: '2016-03-25' , totalunits: 10 , totalcost: 1000 , orderstatus: 'created', customer: customer1)
###
#stockadjustment1 = Stockadjustment.create(customer: customer1 , order: order1, reason: 'returned' ,totalunits: 10, totalcost: 5000, notes: 'Dummy notes',  sastatus: 'recieved' )
####
#purchaseorderitem1 = Purchaseorderitem.create(product: product1 , quantity: 5 ,  total: 500 , poitemstatus: 'created' , recieveddate: '2016-03-25' ,purchaseorder: purchaseorder1)
#purchaseorderitem2 = Purchaseorderitem.create(product: product2 , quantity: 5 ,  total: 500 , poitemstatus: 'created' , recieveddate: '2016-03-25'  ,purchaseorder: purchaseorder1)
###
#stockadjustmentitem1 = Stockadjustmentitem.create(product: product1 , quantity: 5 ,   total: 500  ,stockadjustment: stockadjustment1)
#stockadjustmentitem2 = Stockadjustmentitem.create(product: product2 , quantity: 5 , total: 500 , stockadjustment: stockadjustment1)

####
#orderitem1 = Orderitem.create(product: product1 , quantity: 5 ,  total: 500 , orderitemstatus: 'created'  ,order: order1)
#orderitem2 = Orderitem.create(product: product2 , quantity: 5 ,  total: 500 , orderitemstatus: 'created'  ,order: order1)

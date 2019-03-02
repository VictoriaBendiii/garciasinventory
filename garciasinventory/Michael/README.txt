LEGEND:
*idnumber = auto-increment id(counter)
*accountid = 1 for admin
	   = 2 fog subadmin
*username = unique
*user_type = "Admin" and "Sub-admin" only
*employeeid = AD01 to AD?? for admins
            = SA01 to SA?? for subadmins
*created, updated, deleted = 2019-03-01 07:12:22
                           = year-month-day hrs:min:ss
*branchid = 1 for Market
	  = 2 for Porta
*deliveryid = 1 for market (from supplier)
	    = 2 for porta (from market)
*delivery_transaction = number of transaction or items in a delivery
*productid = beans
*orderid = number or order/s
*supplierid = suppliers
*productid = beans or products
*logical_count = running count
*physical_count = actual count
*solditemid = for costumer order,number of transaction
*stockid = 1 stock in market
         = 2 stock in porta
*stockin = item in
*stockout = item ordered_out or solditem


 

=========================================================================
EXAMPLE
IN Delivery
deliveryid	delivery_transaction	productid
1		1			1
2		1			2

3		2			1
4		2			2

first row is from supplier, delivers 1 item only which is product 1/ bean 1
second row is from market, delivers 1 item only which is product 2/ bean 2

for the third row from market, delivers 2 item which is product 1 and 2
==========================================================================
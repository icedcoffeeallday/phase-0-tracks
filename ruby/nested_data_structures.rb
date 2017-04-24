#Sales deal tracker
my_deals = {
  customer_1: {
      name: 'Acme Co.',
      priority: 'High',
      main_contact: 'Jane Smits'
        deals: {
          deal1: {
            deal_name: '10K Widgets and Batteries',
            deal_value: 20,000,
              product_interest: [
                    product_1: {
                      product_name: 'Widgets',
                      product_type: 'Hardware'
                    }
                    product_2: {
                      product_name: 'Widget Washers',
                      product_type: 'Parts'
                    }
                    product_3: {
                      product_name: 'Widget Batteries'
                      product_type: 'Batteries'
                    }
                #] close product list
          #} close deal1
        #} close all deals
      #}close name,
  #} close customer1
  #customer_2: {
      #name
      #priority
      #main contact
        #deals: {
          #deal1: {
            #deal name:
            #deal value:
              #product interest [
                    #product 1: {
                      #name:
                      #type:
                    #}
                    #product 2: {
                      #name:
                      #type:
                    #}
                #] close product list
          #} close deal1
        #} close all deals
      #}close name,
  #} close customer2
#}close main hash
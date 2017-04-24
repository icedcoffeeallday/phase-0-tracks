#Sales deal tracker
my_deals = {
  customer_1: {
      name: 'Alpha Co.',
      priority: 'High',
      main_contact: 'Jane Smits',
        deals: {
          deal1: {
            deal_name: '10K Widgets and Batteries',
            deal_value: 20000,
              product_interest: [
                    product_1: {
                      product_name: 'Widgets',
                      product_type: 'Hardware'
                    }, #close product1
                    product_2: {
                      product_name: 'Widget Washers',
                      product_type: 'Parts'
                    }, #close product2
                    product_3: {
                      product_name: 'Widget Batteries',
                      product_type: 'Batteries'
                    }, #close product3
                ] #close product list
          }, #close deal1
          deal2: {
            deal_name: 'Upsell 20 Batteries',
            deal_value: 200,
              product_interest: [
                product_1: {
                  product_name: 'Widget Batteries',
                  product_type: 'Batteries'
                  } #close product1
              ]#close product list
          } #close deal2
        } #close all deals
      }, #close customer_1
  customer_2: {
    name: 'Bravo Co.',
    priority: 'Low',
    main_contact: 'Taylor Davis',
        deals: {
          deal1: {
            deal_name: 'Prospecting',
            deal_value: 1000,
              product_interest: [
                product_1: {
                  product_name: 'Widget Starter Pack',
                  product_type: 'Hardware'
                  }
                ] #close product list
          } #close deal1
        } #close all deals
  } #close customer2
} #close main hash
puts "My main deal is worth:"
puts my_deals[:customer_1][:deal1][:deal_value]
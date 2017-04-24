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
                    'Widgets',
                    'Widget Washers',
                    'Spare Parts',
                    'Widget Batteries'
                ] #close product list
          }, #close deal1
          deal2: {
            deal_name: 'Upsell 20 Batteries',
            deal_value: 200,
              product_interest: [
                    'Widget Batteries'
                ] #close product list
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
                  'Widget Starter Pack'
                ] #close product list
          } #close deal1
        } #close all deals
  } #close customer2
} #close main hash
#some outputs. always be closing!
puts "I have these customers:"
puts my_deals[:customer_1][:name]
puts my_deals[:customer_2][:name]
puts "My main deal is:"
puts my_deals[:customer_1][:deals][:deal1][:deal_name]
puts "The third product in it is:"
puts my_deals[:customer_1][:deals][:deal1][:product_interest][2]
puts "I really need to call #{my_deals[:customer_2][:main_contact]} about her interest in the #{my_deals[:customer_2][:deals][:deal1][:product_interest][0]}. I need that $#{my_deals[:customer_2][:deals][:deal1][:deal_value]} for this month's quota."
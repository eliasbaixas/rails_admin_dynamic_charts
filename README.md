# RailsAdminDynamicCharts

Add dynamic charts to RailsAdmin.

In your `Gemfile`, add the following dependency:
    
    gem 'rails_admin_dynamic_charts', github: 'openjaf/rails_admin_dynamic_charts'
    gem 'chartkick'

You can optionally add another gem

    gem 'descriptive_statistics'
    
This include other statistics: mean, median, mode and variance.    

Run:

    $ bundle install
    
For any model where you wish to display a chart add the following just under the class declaration:

```ruby
include RailsAdminDynamicCharts::Datetime
```



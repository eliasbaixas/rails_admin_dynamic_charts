# RailsAdminDynamicCharts

Add dinamyc charts to RailsAdmin.

In your `Gemfile`, add the following dependency:
    
    gem 'rails_admin_dynamic_charts', github: 'openjaf/rails_admin_dynamic_charts'
    gem 'chartkick'
    gem 'descriptive_statistics'

Run:

    $ bundle install
    
For any model where you wish to display a chart add the following just under the class declaration:

```ruby
include RailsAdminDynamicCharts::Datetime
```

Now only work with '>~ 0.6.5'
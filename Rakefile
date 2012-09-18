# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name  = 'Grid'
  app.files = []
  app.files += %w{
    control_variables
    app_delegate
    
    article_list_view_controller
    article_list_view_controller_iphone
    
    article_cell
    article_cell_iphone
    
    article_title_label
    
    horizontal_table_cell
    horizontal_table_cell_iphone
    
  }.map { |f| "app/#{f}.rb" }

  app.codesign_certificate   = "iPhone Developer: Gavin Morrice (U994S7N7GZ)"
  app.provisioning_profile   = '/Users/Gavin/Library/MobileDevice/Provisioning Profiles/A977C2A2-28F1-4CAA-9AD4-DBA48ECDAD8A.mobileprovision'

end

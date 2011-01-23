module ApplicationHelper
  %w(categories recipes ingredients).each do |name|
     define_method "get_#{name}" do |controller_name|
       controller_name == "#{name}" ? 'current' : ''
     end
   end
end

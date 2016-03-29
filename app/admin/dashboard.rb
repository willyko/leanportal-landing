ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #
     columns do
       column do
         panel "Recent Visitors" do
           ul do
             Visitor.all.map do |visitor|
               li link_to(visitor.name, admin_visitor_path(visitor))
             end
           end
         end
       end

       column do
        panel "Info" do
           para "Welcome to ActiveAdmin."
         end
       end
     end
  end # content
end

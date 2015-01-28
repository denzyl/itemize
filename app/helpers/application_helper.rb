module ApplicationHelper
  def link_to_add_fields(name, f, association, locals={})
    new_object = f.object.send(association).klass.new
    fields = f.fields_for(association, new_object, child_index: "new_item") do |builder|
      render(association.to_s.singularize + "_fields", locals.merge!(f: builder))
    end
    link_to(name, '#', :class => "add_fields btn btn-default", data: {id: "new_item", fields: fields.gsub("\n", "")})

  end
end

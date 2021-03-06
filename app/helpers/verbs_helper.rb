module VerbsHelper
  def full_infinitive verb
    if verb.trxn.blank? 
      verb.infinitive
    else
      "#{verb.infinitive} [#{verb.trxn}]"
    end
  end

  # https://stackoverflow.com/questions/3863844/rails-how-to-build-table-in-helper-using-content-tag
  def display_verbs_table(columns, collection = {})

    thead = content_tag :thead do
      content_tag :tr do
        columns.collect {|column| concat content_tag(:th, column[:display_name], class: "head")}.join().html_safe
        concat content_tag :th, "Aktionen", class: "head"
        end
    end

    infinite_class  = 'bg-secondary text-light font-weight-bold'
    
    tbody = content_tag :tbody do
      collection.collect { |elem|

      participle   = "#{elem.attributes['aux']} #{elem.attributes['participle']}" 
      view_button_class = elem.examples.present? ? "btn btn-default btn-sm verb" : "btn btn-default btn-sm"

        content_tag :tr do
          concat content_tag :td, full_infinitive(elem),     class: infinite_class
          concat content_tag :td, elem.attributes['prasens']
          concat content_tag :td, elem.attributes['simple']
          concat content_tag :td, participle
          concat content_tag :td, elem.attributes['ru']
          concat content_tag :td, elem.attributes['en']
          concat content_tag :td, link_to((fa_icon "edit 1x"),    edit_verb_path(elem)), class: 'btn btn-default btn-sm'
          concat content_tag(:td, link_to((fa_icon "fas eye 1x"), verb_path(elem)),      class: view_button_class)
        end

      }.join().html_safe
    end
    content_tag :table, thead.concat(tbody), class: "table-sm table table-hover"
  end
end


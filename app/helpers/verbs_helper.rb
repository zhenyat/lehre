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
      end
    end

    row_class       = 'other'
    infinite_class  = row_class + " strong"
    
    tbody = content_tag :tbody do
      collection.collect { |elem|

      # strong_sign  = elem.strong? ? fa_icon("check") : ''
      # regular_sign = elem.regular ? fa_icon("check-square") : ''
      participle   = "#{elem.attributes['aux']} #{elem.attributes['participle']}" 
      view_button_class = elem.examples.present? ? "btn btn-default btn-sm verb" : "btn btn-default btn-sm"

        content_tag :tr do
          concat content_tag :td, full_infinitive(elem),      class: infinite_class
          concat content_tag :td, elem.attributes['prasens']#, class: row_class
          concat content_tag :td, elem.attributes['simple']#,  class: row_class
          concat content_tag :td, participle#,                 class: row_class
          concat content_tag :td, elem.attributes['ru']#,      class: row_class
          concat content_tag :td, elem.attributes['en']#,      class: row_class
          concat content_tag :td, link_to((fa_icon "edit 2x"), edit_verb_path(elem)), class: 'btn btn-default btn-sm'
          concat content_tag(:td, link_to((fa_icon "fas eye 2x"),  verb_path(elem)),  class: view_button_class)
        end

      }.join().html_safe
    end
    content_tag :table, thead.concat(tbody), class: "table table table-hover"
  end
end


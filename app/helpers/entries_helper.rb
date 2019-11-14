module EntriesHelper
  def full_notation entry
    if entry.art == 'n/a'
      full_notation = "#{entry.de}"
    else 
      full_notation = "#{entry.art} #{entry.de}"
    end
    full_notation += " [#{entry.trxn}]" if (!entry.trxn.nil? and !entry.trxn.blank?)
    full_notation += " (#{entry.pl})"   if (!entry.pl.nil? and !entry.pl.blank?)
    
    full_notation
  end
  
  def show_row entry
    case entry.art
    when 'der'
      return content_tag(:tr, class: "masculinum") do 
          entry.de
      end
    when 'die'
      return content_tag(:tr, class: "femininum") do
          entry.de
      end
    when 'das'
      return content_tag(:tr, class: "neutrum") do
          entry.de
      end
      else
      return content_tag(:tr) do
          entry.de
      end
    end
  end
  
 
  # https://stackoverflow.com/questions/3863844/rails-how-to-build-table-in-helper-using-content-tag
  def display_standard_table(columns, collection = {})

    thead = content_tag :thead do
      content_tag :tr do
        columns.collect {|column| concat content_tag(:th, column[:display_name], class: "head")}.join().html_safe
      end
    end

    tbody = content_tag :tbody do
      collection.collect { |elem|
        if elem.Nomen?
          case elem.art
            when 'der' then row_class = "masculinum"
            when 'die' then row_class = "femininum"
            when 'das' then row_class = "neutrum"
            else            row_class = "other"
          end
          full_de =  "#{elem.attributes['art']} #{elem.attributes['de']}"  
          full_de += " [#{elem.attributes['trxn']}]" if (!elem.attributes['trxn'].nil? and !elem.attributes['trxn'].blank?)
          full_de += " (#{elem.attributes['pl']})"   if (!elem.attributes['pl'].nil?  or elem.attributes['pl'].blank?)
        else
          full_de =  "#{elem.attributes['de']}"
          
            row_class = "verb" if elem.Verb?
            row_class = "personalpronoun" if elem.Personalpronoun?
            row_class = "adjektiv"        if elem.Adjektiv?
            row_class = "adverb"          if elem.Adverb?
        end 

        content_tag :tr do
          concat content_tag(:td, full_de, class: row_class)
          concat content_tag(:td, elem.attributes['en'], class: row_class)
          concat content_tag(:td, elem.attributes['ru'], class: row_class)
          concat content_tag(:td, elem.attributes['pos'], class: row_class)
        end

      }.join().html_safe
    end

    content_tag :table, thead.concat(tbody), class: "table table table-hover"
  end
end
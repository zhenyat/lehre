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
end
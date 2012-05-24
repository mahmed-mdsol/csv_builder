# Transliterates CSV using ActiveSupport::Inflector.transliterate if the desired
# output encoding is ASCII
#
# This should do a reasonable job of converting the input into ASCII even if
# some characters don't have a good match
class CsvBuilder::TransliteratingFilter
  def initialize(csv)
    @csv = csv
  end

  def <<(row)
    # Transliterate before passing to FasterCSV so that the right characters (e.g.
    # quotes) get escaped
    @csv << row.map { |value| ActiveSupport::Inflector.transliterate value }
  end
  alias :add_row :<<
end

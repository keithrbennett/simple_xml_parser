require_relative 'parser'

module SimpleXmlParser

# This class is provided as an example of how the Parser can be subclassed
# to implement specialized behavior for your data file.
#
# It parses chess player/rating "combined" XML files provided at
# https://ratings.fide.com/download_lists.phtml.
class FideXmlParser < Parser

    # These field names will work even if field_name_renames are provided, because
    # they are accessed before the renaming is done.
  INTEGER_FIELDS = %w[
    birthday
    k
    blitz_k
    rapid_k
    rating
    blitz_rating
    rapid_rating
    games
    blitz_games
    rapid_games
  ].map(&:freeze)

  def initialize(key_filter: nil, record_filter: nil, field_name_renames: nil)
    super(array_name:         'playerslist',
          record_name:        'player',
          integer_fields:     INTEGER_FIELDS,
          key_filter:         key_filter,
          record_filter:      record_filter,
          field_name_renames: field_name_renames)
  end
end
end

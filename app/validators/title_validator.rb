class TitleValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    if record.title == nil || record.title.length == 0
      record.errors[attribute] << (options[:message] || "Must have title")
    else
        s = Song.find_by title: record.title, release_year: record.release_year, released: true

        if s != nil
            record.errors[attribute] << (options[:message] || "Song exists")
        end
    end

  end
  
end

class ReleaseYearValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    # if !["fiction", "non-fiction"].include?(value.downcase)
    #   record.errors[attribute] << (options[:message] || "not in categories")
    if record.released == true && (record.release_year == nil || record.release_year.to_i > Date.today.year.to_i)
      record.errors[attribute] << (options[:message] || "release year error")
    end

  end
  
end

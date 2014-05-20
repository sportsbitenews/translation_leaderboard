module GitHelpers
  def parse_blame(filename)
    info = {}
    content = `git blame -p -l #{filename}`
    authors_cache = {}
    content.scan(/^([0-9a-f]{40}) (\d+) (\d+) (\d+)$(?:\nauthor (.+))?$/).each do |match|
      rev        = match[0]
      start_line = match[2].to_i
      num_lines  = match[3].to_i
      author     = match[4]

      if author
        authors_cache[rev] = author
      else
        author = authors_cache[rev]
      end

      num_lines.times do |i|
        info[start_line + i] = {:name => author}
      end
    end

    info
  end
end

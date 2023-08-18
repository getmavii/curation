require 'csv'
require 'fileutils'

def row_to_rule(row)
  # Validate that this row has the correct columns
  if row.size != 5 || row.headers != ["Site", "Path", "Boost", "Discard", "Reasoning"]
    raise "Invalid row: #{row}: #{row.headers}"
  end

  site = row["Site"]
  path = row["Path"] == "/" ? "" : row["Path"]
  boost = (row["Boost"] || "1").to_i
  discard = row["Discard"] == "TRUE"

  if discard
    "#{path}$discard,site=#{site}"
  else
    if boost >= 0
      "#{path}$site=#{site},boost=#{boost}"
    else
      # Use the absolute value of negative boost as downrank
      "#{path}$site=#{site},downrank=#{boost.abs}"
    end
  end
end

def delete_goggles
  FileUtils.rm_rf(Dir.glob("goggles/*.goggle"))
end

def generate_goggles
  Dir.glob("spreadsheets/*.csv") do |csv_file|
    filename = File.basename(csv_file, File.extname(csv_file))
    File.open("goggles/#{filename}.goggle", "w") do |output|
      output.puts "! name: Mavii #{filename}"
      output.puts "! description: Curated sites for #{filename}"
      output.puts "! public: false"
      output.puts "! author: mavii.com"
      output.puts ""

      CSV.foreach(csv_file, headers: true) do |row|
        output.puts row_to_rule(row)
      end
    end
  end
end

delete_goggles
generate_goggles

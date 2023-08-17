require 'csv'
require 'fileutils'

def row_to_rule(row)
  # path$site=example.com,boost=1
  site = row["Site"]
  path = row["Path"] == "/" ? "" : row["Path"]
  boost = (row["Boost"] || "1").to_i
  discard = row["Discard"] == "TRUE"

  if discard
    "#{path}$discard,site=#{site}"
  else
    "#{path}$site=#{site},boost=#{boost}"
  end
end

def delete_goggles
  FileUtils.rm_rf(Dir.glob("goggles/*.goggle"))
end

def generate_goggles
  Dir.glob("topics/**/*.csv") do |csv_file|
    filename = File.basename(csv_file, File.extname(csv_file))
    File.open("goggles/#{filename}.goggle", "w") do |goggles_file|
    # First row is headers
      CSV.foreach(csv_file, headers: true) do |row|
        goggles_file.puts row_to_rule(row)
      end
    end
  end
end

delete_goggles
generate_goggles
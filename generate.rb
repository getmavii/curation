require 'yaml'
require 'erb'

def camelCase(str)
  str.gsub('&', 'And').gsub(/-/, '').split.map.with_index { |word, i| i == 0 ? word.downcase : word.capitalize }.join
end

prompt = <<~PROMPT
**<%= name %> Websites Ranking Spreadsheet**

**Description:** <%= description %>

**Target audience**: Tech-savvy, well-educated progressives who value in-depth journalism, diverse cultural insights, and prioritize quality over sensationalism.

**Objective:** Rank the most trustworthy **<%= name %>** websites based on their quality and reliability.

**How to Rank:**

- Increase or decrease the site's rank by adjusting the "Boost" value.

**Topics to Cover:**

<%= subtopics.collect { |s| "- " + s }.join("\n") %>

**Spreadsheet Columns:**

1. **Site:** The website's main domain. Use lowercase. Example: `example.com`
2. **Path:** Specific section of the site. Example: `/books/`
3. **Boost:** Rank the site between -10 (least reliable) and 10 (most reliable).
4. **Discard:** If a site should not be included due to misinformation or any other reason, mark as TRUE. Otherwise, FALSE.
5. **Reasoning:** Share your rationale for the site's inclusion or exclusion. If your reason contains commas, use quotation marks around it.

**Task:**

1. Compile a thorough list of the most frequented <%= name %> websites.
2. Assign a Boost value to each based on their credibility.
3. Exclude any sites that spread misinformation.
4. Clearly articulate your reasoning for including or excluding each site.
5. Ensure your final list is in CSV format.

**Note:** Do not add any fictional data in the final CSV.
PROMPT

# load topics
topics = YAML.load_file('topics.yml')

# Delete existing prompts
Dir.glob('prompts/*.txt').each { |file| File.delete(file) }

# loop through topic keys
topics.keys.each do |name|
  puts "Topic: #{name}"
  topic = topics[name]
  description = topic["description"]
  subtopics = topic["subtopics"]
 
  # output to prompts as text file in prompts folder
  File.open("prompts/#{camelCase(name)}.txt", 'w') do |file|
    file.write ERB.new(prompt).result(binding)
  end
end
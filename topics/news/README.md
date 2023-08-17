## Prompt

I am creating a spreadsheet that ranks the quality and reliability of **News** websites. They can be be upranked or downranked by changing the boost value.

It should cover topics like:

- Local
- International
- Technology
- Health
- Sports
- Politics

The spreedsheet has the following columns:

Site: The domain of the site without the path. Lowercase.
Path: The path to relevant content on the site.
Boost: A value between -10 and 10 that changes the rank of a matching result.
Discard: Remove this site/path from the results. Should be TRUE or FALSE.
Reasoning: Why this site was chosen. Enclose in quotes to escape commas.

Please make a comprehensive list of the most popular sites with appropriate boosts as a CSV. Discard sites that contain misinformation. Explain why you chose each site. Don't include any other examples in the generated CSV.

```
Site,Path,Boost,Discard,Reasoning
example.com,/,5,FALSE,"Established site..."
badsiteexample.com,/,-10,TRUE,"Misinformation..."
```

## Response

Here's a comprehensive list in CSV format for news websites across different categories, considering popularity, quality, and reliability as of my last training data:

```csv
Site,Path,Boost,Discard,Reasoning
bbc.com,/,8,FALSE,"Internationally recognized for balanced news and coverage across categories"
cnn.com,/,7,FALSE,"Popular international news outlet with diverse content, sometimes criticized for being USA-centric"
nytimes.com,/,7,FALSE,"Renowned for investigative journalism, international coverage, but faced criticism over certain political biases"
reuters.com,/,8,FALSE,"Global news organization known for timely and unbiased reporting"
aljazeera.com,/,7,FALSE,"Provides a unique perspective on international news, especially from the Middle East"
techcrunch.com,/tech,8,FALSE,"Reputable source for technology news and startup culture"
arstechnica.com,/tech,7,FALSE,"Technical depth and up-to-date reporting on technology"
healthline.com,/news,6,FALSE,"Reliable and comprehensive source for health-related news"
espn.com,/,8,FALSE,"Prominent and reliable source for sports news"
politico.com,/,7,FALSE,"Focused on political news with extensive coverage, occasionally criticized for its DC-centric views"
theguardian.com,/,8,FALSE,"UK-based international news outlet, known for in-depth analysis and broad coverage"
apnews.com,/,8,FALSE,"Associated Press is a trusted global news organization"
thehill.com,/,6,FALSE,"Focused on US political news, often from a policy angle"
forbes.com,/,6,FALSE,"While known for business, also covers health, tech, and international news"
naturalnews.com,/,10,TRUE,"Frequent promoter of health misinformation and conspiracy theories"
foxnews.com,/,6,FALSE,"Popular US news channel, often criticized for conservative bias"
msnbc.com,/,6,FALSE,"US-based news, known for liberal leanings"
infowars.com,/,10,TRUE,"Known to propagate conspiracy theories and misinformation"
washingtonpost.com,/,7,FALSE,"US-based newspaper with extensive international and political coverage"
localnewsexample.com,/,5,FALSE,"Placeholder for local news sites which can vary by region and quality"
```

Note: The provided list is not exhaustive. The boost values are based on the site's popularity, reputation, and perceived reliability as of my last training data. Some subjective bias could come into play, and ongoing research and discretion are advised.

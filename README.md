# Curation

This is our repository for exploring curated search result sets. Our approach is to boost specific trustworthy sites and exclude sites that contain misinformation. We are using Brave's Goggles feature to deliver the actual filtered results.

## Topics

These is a YAML file that contains all of the topics with their descriptions and subtopics. This is the starting point and should inform the kinds of sites we choose for this area.

## Prompts

We can generate prompts to collaborate with an LLM like ChatGPT to produce these lists. This is more useful at this beginning stage where we're exploring how this might work. It could continue to be useful but our intent isn't to have ChatGPT pick the sites for us.

These can can be regenerated based on `topics.yml` by running:

```
ruby generate.rb
```

## Spreadsheets

These are the collections of sites with corresponding boosts. It contains the following fields:

1. **Site:** The website's main domain. Example: `example.com`
2. **Path:** Specific section of the site. Example: `/books/`
3. **Boost:** Rank the site between -10 (least reliable) and 10 (most reliable).
4. **Discard:** If a site should not be included due to misinformation or any other reason, mark as TRUE. Otherwise, FALSE.
5. **Reasoning:** Rationale for the site's inclusion or exclusion.

These spreadsheets are transformed into `.goggle` files using:

```
ruby build.rb
```

## Goggles

We are using [Brave Goggles](https://search.brave.com/help/goggles) to rerank the results. You can read more about [creating Goggles](https://github.com/brave/goggles-quickstart).

## Prompt

I am creating a spreadsheet that ranks the quality and reliability of **Gaming** websites. They can be be upranked or downranked by changing the boost value.

It should cover topics like:

- PC Gaming
- Console Gaming
- Mobile Gaming
- Esports
- Game Reviews
- Game Development

The spreedsheet has the following columns:

Site: The domain of the site. Lowercase.
Path: The path of a specific section of the site. This is optional. Only include this if it's critical.
Boost: A value between -10 and 10 that changes the rank of a matching result.
Discard: Remove this site/path from the results. Should be TRUE or FALSE.
Reasoning: Why this site was chosen.

Please make a comprehensive list of the most popular sites with appropriate boosts using the CSV format. Discard sites that contain misinformation. Explain why you chose each site.

```
Site,Path,Boost,Discard,Reasoning
example.com,,5,FALSE,Longstanding authority...
```

## Response

Certainly! Here's a sample list based on the criteria you've provided. Do note that this list is not exhaustive, and these decisions are based on the general perception as of my last update in September 2021. Sites, content, and reputation can change over time, so it might be good to periodically re-evaluate these.

```
Site,Path,Boost,Discard,Reasoning
ign.com,,8,FALSE,Longstanding authority on game reviews and news across all platforms.
pcgamer.com,,9,FALSE,Leading source of PC gaming news, reviews, and features.
kotaku.com,,7,FALSE,Diverse coverage on gaming culture, news, and reviews.
polygon.com,,8,FALSE,High-quality game journalism, reviews, and features.
gamespot.com,,8,FALSE,Widely recognized for game reviews, news, and guides.
rockpapershotgun.com,,8,FALSE,Primarily focuses on PC gaming news and reviews.
eurogamer.net,,8,FALSE,Reliable source for game reviews and news in Europe.
gamasutra.com,,6,FALSE,Covers game development and industry news.
giantbomb.com,,7,FALSE,Unique mix of game reviews, gameplay videos, and podcasts.
toucharcade.com,,8,FALSE,Leading source for mobile game news and reviews.
gameinformer.com,,7,FALSE,Magazine with extensive game reviews and features.
destructoid.com,,6,FALSE,Game reviews, news, and community-driven content.
gamesradar.com,,7,FALSE,Covers a wide variety of gaming news, reviews, and guides.
espn.com,esports,9,FALSE,Authoritative source for esports news and updates.
theverge.com,gaming,7,FALSE,Provides gaming news in the context of tech culture.
venturebeat.com,category/games,6,FALSE,Good for gaming news with a tech/business angle.
androidcentral.com,games,7,FALSE,Reliable for Android mobile gaming news and reviews.
pocketgamer.com,,8,FALSE,Mobile gaming reviews, news, and features.
n4g.com,,6,FALSE,News aggregator for gaming articles.
neogaf.com,,4,FALSE,Forum-driven content; may require user discretion.
badexample.com,,,-10,TRUE,Example of a site with consistent misinformation.
```

The "Boost" values are somewhat subjective and are meant to serve as a starting point. You may need to adjust them based on more recent data or your personal preferences. The "Discard" column is mostly set to "FALSE" with the exception of the fictional "badexample.com" to show how a site with misinformation might be flagged.

It's also essential to continually monitor these sites since the quality and reliability of content can evolve.

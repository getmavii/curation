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
Path: Matches the path to relevant content on the site.
Boost: A value between -10 and 10 that changes the rank of a matching result.
Discard: Remove this site/path from the results. Should be TRUE or FALSE.
Reasoning: Why this site was chosen. Enclose in quotes to escape commas.

Please make a comprehensive list of the most popular sites with appropriate boosts as a CSV. Discard sites that contain misinformation. Explain why you chose each site. Don't include any other examples in the generated CSV.

```
Site,Path,Boost,Discard,Reasoning
example.com,/,5,FALSE,"Established site..."
```

## Response

Alright, here's a CSV list for some popular gaming websites and their aspects. Note that these boosts are subjective based on general knowledge up until 2021, and the rankings are not exhaustive. Some websites may be boosted higher or lower based on their prominence in certain sectors of the gaming industry, their perceived reliability, and the quality of their content.

```csv
Site,Path,Boost,Discard,Reasoning
ign.com,/,8,FALSE,"IGN is one of the most recognized brands in gaming media, known for comprehensive game reviews, news, and features."
kotaku.com,/,7,FALSE,"Kotaku offers a mix of news, reviews, and opinion pieces, often with a unique take on the gaming industry."
pcgamer.com,/,8,FALSE,"PC Gamer is renowned for its coverage on PC games, hardware reviews, and related news."
polygon.com,/,7,FALSE,"Polygon is known for its in-depth features, game reviews, and news articles."
gamespot.com,/,7,FALSE,"GameSpot has been a staple in the gaming community for years, offering reviews, news, and features."
rockpapershotgun.com,/,6,FALSE,"Focused on PC gaming, it offers unique opinions and insightful articles."
gamasutra.com,/,7,FALSE,"Gamasutra is oriented towards game development, offering articles, job listings, and academic discussions about the industry."
giantbomb.com,/,7,FALSE,"Giant Bomb is a reputable site for game reviews, videos, and podcasts with a dedicated community."
eurogamer.net,/,7,FALSE,"Eurogamer provides game reviews, news, and in-depth features for a European audience."
gameinformer.com,/,7,FALSE,"Game Informer, a magazine as well, offers game reviews, features, and news."
toucharcade.com,/,6,FALSE,"TouchArcade focuses on mobile gaming reviews, news, and guides."
pocketgamer.com,/,6,FALSE,"Pocket Gamer is another authority in the mobile gaming space, providing reviews and news."
espn.com/esports/,/,6,FALSE,"ESPN's esports section covers major esports events, news, and analyses."
hltv.org,/,6,FALSE,"HLTV focuses on the Counter-Strike esports scene, offering news, statistics, and event coverage."
eventhubs.com,/,6,FALSE,"EventHubs covers the fighting game community and esports events."
gamesindustry.biz,/,7,FALSE,"GamesIndustry.biz provides articles on the business side of the gaming industry."
destructoid.com,/,6,FALSE,"Destructoid offers reviews, news, and op-eds on a variety of gaming topics."
trueachievements.com,/,5,FALSE,"Focused on console achievements and trophies, it also provides news and reviews."
gamedev.net,/,7,FALSE,"A community and resource site for game developers, offering tutorials, forums, and articles."
androidcentral.com/games/,5,FALSE,"Android Central's gaming section provides reviews and news on the latest Android games."
```

This list should serve as a solid starting point. Adjust the boosts according to your criteria and observations over time. Always be open to updating it as the gaming media landscape evolves.

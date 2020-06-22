# Leaf
[![License](https://img.shields.io/github/license/squirrelchat/leaf.svg?style=flat-square)](https://github.com/squirrelchat/leaf/blob/master/LICENSE)
[![Discord](https://img.shields.io/badge/chat-on%20Discord-7289DA.svg?style=flat-square)](https://discord.gg/zhxhCzN)

**NOTE**: This is in development and not usable yet.

----

Leaf is a microservice capable of proxying images, audio and video as well as fetching websites metadata.

While primarily designed to be used within [Squirrel](https://squirrel.chat), Leaf can be used in your stack as it's a
completely independent service which can be ran on its own.

## Features
 - *F a s t*: <!-- unlike vlang --> Leaf is designed to handle very large amounts of requests efficiently;
 - Website metadata fetching: Leaf extracts Twitter and OpenGraph metas in websites header in a neat JSON object;
 - Media proxying: Prevent user's IP from leaking when displaying user-posted content on your application;
   - Image on-fly resize: Leaf can resize images on fly to reduce bandwidth usage and improve app's responsiveness.
   - Video & audio compression: Leaf compresses audio and video (lossy compression) to reduce bandwidth usage.
 - Reliable content detection: Leaf never uses extensions to identify a link contents but its `Content-Type` header to
ensure accurate results;
 - Secure: Prevent abuse of the service by requiring a signature to query data from the service;
 - Highly scalable: Experiencing heavy loads? Deploy a new node, and there you go;
 - Fast lookup: Leaf uses caching to enhance loading times when pinging multiple times the same link;
 - Threat protection: Leaf can use Google's Web Risk API to determine if a link is dangerous or not;

And more!

### Extra websites metadata
For some websites, Leaf uses more than simply metadata but also scrapes website contents. Want to see more websites
supported or a website support improved? File an issue or submit a PR!

 - Twitter:
   - Tweets: Retweets, Likes, Comments count
   - Users: Bio, Location, Website, Birth date, Join date, Following count, Followers count, Tweets count
 - Reddit
   - Posts: Upvotes, Comments count, Author, Subreddit details
   - Subreddits: Members, Online, Creation date
   - Users: Karma, Cake Day, Followers
 - YouTube
 - Discord
 - Wikipedia
 - MyAnimeList
 - nhentai <!-- we got you fellow degenerates :^) -->

### Robot Exclusion Protocol (REP) compliance
Leaf does not behaves according to REP. Google's proposed standard has not been accepted as a RFC yet, and we don't
feel Leaf's traffic should be governed by this protocol.

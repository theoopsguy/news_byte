# News Byte

A mobile app built with Flutter that fetches news content from various sources and displays it in a concise format.

## Features

* Fetch news from multiple sources using NewsAPI
* Short format news display
* Read the full article inside the app through WebView

## Getting Started

1. Clone the repository
```
git clone https://github.com/theoopsguy/news_byte
```

2. Get an API key from NewsAPI and add it to the 'api_key.dart' file

3. Run the app on an emulator or a physical device
```
flutter run
```

## Technical details
* The app is built with Flutter, a UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
* It uses the http package to make API calls to NewsAPI
* webview_flutter package is used to display the full article inside the app

## Demo
Video Demo: https://www.youtube.com/shorts/4qb6eVxnt6M


<img src="https://github.com/theoopsguy/news_byte/blob/main/assets/screenshot0.png?raw=true" width="227.36" height="480">
<img src="https://github.com/theoopsguy/news_byte/blob/main/assets/screenshot1.png?raw=true" width="227.36" height="480">
<img src="https://github.com/theoopsguy/news_byte/blob/main/assets/screenshot2.png?raw=true" width="227.36" height="480">

## Acknowledgements
* NewsAPI for providing the news data
* The Flutter community for the packages used in the project
# Flutter Music Player App

Welcome to the Flutter Music Player App! This project is a simple music player application built using Flutter. It demonstrates the use of Flutter for building cross-platform applications, including Android, iOS, web, and desktop platforms.

## Features

- Play, pause, and stop music
- Display song title and artist
- Customizable UI with Flutter widgets
- Cross-platform support (Android, iOS, Web, Desktop)

## Project Structure

```
FlutterMusicPlayerApp/ 
├── .gitignore 
├── .metadata 
├── analysis_options.yaml 
├── pubspec.lock 
├── pubspec.yaml 
├── README.md 
├── android/ 
├── assets/ 
│ ├── images/ 
│ │ ├── alen.jpg 
│ │ ├── avatar.png 
│ │ └── test.jpg 
│ └── music/ 
│ └── test.mp3 
├── ios/ 
├── lib/ 
│ ├── controllers/ 
│ │ └── music_controller.dart 
│ ├── models/ 
│ │ └── music_model.dart 
│ ├── views/ 
│ │ ├── home_view.dart 
│ │ └── player_view.dart 
│ ├── widgets/ 
│ │ ├── controller.dart 
│ │ └── music_logo.dart 
│ └── main.dart 
├── linux/ 
├── macos/ 
├── web/ 
├── windows/
```

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter
- Android Studio or Xcode for mobile development

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/flutter_music_player_app.git
    cd flutter_music_player_app
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app:

    ```bash
    flutter run
    ```

## Usage

- The home screen displays a button to navigate to the music player.
- The music player screen allows you to play, pause, and stop the music.
- The song title and artist are displayed on the player screen.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- Flutter
- audioplayers
- google_fonts
- audio_video_progress_bar

## Contact

If you have any questions or feedback, feel free to reach out to me at [your-email@example.com].

Happy coding!

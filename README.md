# Carousal Slider with Custom Indicator 

Creating a carousel slider with custom indicators in Flutter can be accomplished using the carousel_slider package along with custom widgets for the indicators. Here's a step-by-step guide on how to achieve this:

1.  **Add Dependencies** : First, add the carousel_slider package to your pubspec.yaml file.:

    ```yaml
    dependencies:
      flutter:
        sdk: flutter
        carousel_slider: ^4.0.0
    ```

2. **Download the dependency** by running:

    ```bash
    flutter pub get
    ```

3. **Import the Package** : Import the carousel_slider package in your Dart file.
    ```
      import 'package:flutter/material.dart';
      import 'package:carousel_slider/carousel_slider.dart';
    ```

## Usage :

```dart
CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
)
 ```

## Screenshots

<div align="center">
    <img src="https://github.com/Drashtipatel296/media_player_example/assets/143180636/a9652f59-34e1-40e2-9c49-b5f7655ae21e" height=500px>
    <img src="https://github.com/Drashtipatel296/media_player_example/assets/143180636/e2282de8-0566-4175-9309-53dc5f6236f5" height=500px>
    <img src="https://github.com/Drashtipatel296/media_player_example/assets/143180636/71bc2624-282e-4d54-b88b-a846465a66a8" height=500px>
    <img src="https://github.com/Drashtipatel296/media_player_example/assets/143180636/8ef55f25-89aa-4a97-a6d5-636c5fa5cee2" height=500px>
</div>

## Video 

<div align="center">
  <video src="https://github.com/Drashtipatel296/media_player_example/assets/143180636/491158f7-16de-41ba-aeb1-efa596c3a0d1"></video>
</div>

<div align="center">
<a href="https://github.com/Drashtipatel296/media_player_example/tree/master/lib">-> Go To Code <-</a>
</div>





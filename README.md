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

# Video 

<div align="center">
  <video src="https://github.com/Drashtipatel296/media_player_example/assets/143180636/4ba7f39f-26f3-452c-ac4c-ee9361e4ea2e"></video>
</div>

<div align="center">
<a href="https://github.com/Drashtipatel296/media_player_example/tree/master/lib">-> Go To Code <-</a>
</div>




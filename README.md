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

# Parallax Effect
   Edit the `lib/main.dart` file to include the parallax effect.

   ```dart
   import 'package:flutter/material.dart';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Parallax Effect',
         theme: ThemeData(
           primarySwatch: Colors.blue,
         ),
         home: ParallaxDemo(),
       );
     }
   }

   class ParallaxDemo extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Parallax Effect'),
         ),
         body: ParallaxListView(),
       );
     }
   }

   class ParallaxListView extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return ListView.builder(
         itemCount: 10,
         itemBuilder: (context, index) {
           return ParallaxItem(index: index);
         },
       );
     }
   }

   class ParallaxItem extends StatelessWidget {
     final int index;

     ParallaxItem({required this.index});

     @override
     Widget build(BuildContext context) {
       return Container(
         height: 200,
         child: Stack(
           children: [
             Positioned.fill(
               child: Image.asset(
                 'assets/background.jpg',
                 fit: BoxFit.cover,
                 alignment: Alignment(-0.5 + index * 0.1, 0),
               ),
             ),
             Positioned.fill(
               child: Align(
                 alignment: Alignment.center,
                 child: Transform.translate(
                   offset: Offset(0, -index * 10.0),
                   child: Image.asset('assets/foreground.png'),
                 ),
               ),
             ),
             Center(
               child: Text(
                 'Item $index',
                 style: TextStyle(fontSize: 24, color: Colors.white),
               ),
             ),
           ],
         ),
       );
     }
   }
   ```

### Explanation:

1. **Main Application:**
   - The `MyApp` class sets up the application with a `ParallaxDemo` home screen.

2. **ParallaxDemo Screen:**
   - The `ParallaxDemo` widget is a simple `Scaffold` with an `AppBar` and a `ParallaxListView` as the body.

3. **ParallaxListView:**
   - The `ParallaxListView` widget uses a `ListView.builder` to create a scrollable list of `ParallaxItem` widgets.

4. **ParallaxItem:**
   - Each `ParallaxItem` widget is a `Container` with a fixed height.
   - The `Stack` widget is used to layer the background image, the foreground image, and the text.
   - The background image is positioned to create a parallax effect by adjusting the alignment based on the item index.
   - The foreground image uses a `Transform.translate` to create a parallax effect by shifting its position based on the item index.
   - The `Center` widget is used to overlay text on top of the images.

### ScreenShots

<p align='center'>
  <img src='https://github.com/Drashtipatel296/media_player_example/assets/143180636/738d26e7-ecbd-4868-b08e-771c82aa946f' width=240>
  <img src='https://github.com/Drashtipatel296/media_player_example/assets/143180636/85225152-4ecf-4e4c-b07c-a01cb7760a59' width=240>
  <img src='https://github.com/Drashtipatel296/media_player_example/assets/143180636/1e1004ac-10df-4261-aad9-9ada81d223fa' width=240>
  <img src='https://github.com/Drashtipatel296/media_player_example/assets/143180636/2b80e3c6-81a8-4060-978c-22628c543953' width=240>
  <img src='https://github.com/Drashtipatel296/media_player_example/assets/143180636/1b9e40bd-890b-4b3e-9cb6-e99de59c82c3' width=240>
 
</p>


### video

https://github.com/Drashtipatel296/media_player_example/assets/143180636/e0393a34-5b79-479f-94a5-ea7b8036335a












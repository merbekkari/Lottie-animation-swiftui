# Lottie Animation Control with SwiftUI

This project demonstrates how to integrate **Lottie animations** with **SwiftUI** and control their playback and speed using interactive buttons. It allows users to:

- Play and pause the animation.
- Control the animation speed (rewind or skip).

## Features
- **Lottie Animation Integration:** Uses the Lottie framework to display high-quality, lightweight animations.
- **SwiftUI:** Utilizes the power of SwiftUI for a responsive and modern user interface.
- **Playback Control:** Users can toggle between play and pause states.
- **Speed Control:** Users can adjust the speed of the animation with rewind and skip buttons.
- **Customizable Animation:** The animation name can be dynamically passed to the `LottieView`, making it easy to change the animation source.

## Requirements
- **Xcode 12+**
- **iOS 13+**
- **Lottie Framework**

## Installation

1. **CocoaPods**:
   If you're using CocoaPods, add this line to your `Podfile`:
   ```ruby
   pod 'Lottie'
   
  ```ruby
   pod install

  ```
**Swift Package Manager (SPM)**:
   Alternatively, you can add Lottie via Swift Package Manager by including this URL:
   ```bash
   https://github.com/airbnb/lottie-ios.git
  ```
**Usage**:
This project provides a simple example of controlling Lottie animations within a SwiftUI view. The LottieView is a UIViewRepresentable that displays a Lottie animation and allows for playback control.
  ```ruby
LottieView(animationName: "your_animation_file_name", loopMode: .loop, animationSpeed: CGFloat(speed), isPaused: isPaused)
    .frame(width: 300, height: 300)

  ```
**Controls**:
- **Play/Pause Button: Toggles the animation's play and pause states.**
- **Rewind Button: Decreases the animation speed.**
- **Skip Button: Increases the animation speed.**

**Example Code**:
  ```ruby
@State var isPaused: Bool = false
@State var speed: Float = 1

var body: some View {
    VStack {
        LottieView(animationName: "animation_name", loopMode: .loop, animationSpeed: CGFloat(speed), isPaused: isPaused)
        HStack {
            Button("Rewind") {
                speed -= 0.1
            }
            Button(action: {
                isPaused.toggle()
            }) {
                Text(isPaused ? "Play" : "Pause")
            }
            Button("Skip") {
                speed += 0.1
            }
        }
    }
}
  ```
**Contributing**
Feel free to fork the repository, submit issues, and create pull requests. Contributions are always welcome!

# SwipeTabViewChallenge

This challenge demonstrates the use of swipable cards/pages via the TabView container. I also implemented
the GeometryReader, which allows this app to scale the cards accordingly with the device.

## Challenge

Build a UI that displays 50 cards, where the user can swipe left and right between cards. 

Each card should have

* A rectangle with corner radius 20 and shadow radius 10

  * Tip: Play around with the shadow modifier to find what you think looks best!

* The rectangle’s background should be a random colour that changes every time a card is swiped

  * Tip: Use Double.random(in: 0..<1) to generate a random number between 0 and 1

* The rectangle should size dynamically to fit the user’s screen

* Overlayed on the rectangle should be the number of the card (starting from 1), surrounded by a black circle

  * Tip: Use SF symbols to make this easier

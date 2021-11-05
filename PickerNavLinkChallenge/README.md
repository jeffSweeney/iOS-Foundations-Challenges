# PickerNavLinkChallenge

This challenge uses a Picker and NavigationLink to exploit selection/binding as an alternative "back" button

## Challenge

To provide some motivation for this challenge, we discuss two issues that you may want to solve when working with Navigation Links. 

First, it is sometimes useful to create a navigation link with an empty body (i.e. its label is the empty view), and only trigger the link programmatically. 
This still gives the nice stack-like behaviour of the Navigation View, while giving you more control over how the links get triggered. 

Second, sometimes having the navigation bar hidden is useful - for example, the style of the navigation bar title might not fit in well with the rest of your 
app. To solve this, you can hide the navigation bar...but then you lose the back button functionality. But not to fear, we can create our own!

For this challenge, create an app with a picker view that lets the user select which view they want to push from 10 views (each child view is identical except 
for its number). Under the picker view is a button that pushes a navigation link for the selected view.

The child view should state the number of which view it is. It should not use the navigation bar (i.e. the navigation bar should be hidden). Provide a custom 
back button that when tapped, takes the user back to the home view.

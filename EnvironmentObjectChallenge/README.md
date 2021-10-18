# EnvironmentObject Challenge

This challenge was intended to supplement the EnvironmentObject lecture. Up until this point, I've
been using the ObservableObject state wrapper property. This isn't practical when multiple Views
all need to use the View Model. You just want one copy of it, so you should be using another way
to efficiently pass the instance around - EnvironmentObject!

## Challenge

Challenge

Build an app that displays information about people working at different companies. The main view has two tabs:

* The first tab shows a list of all the people, including their name, address, company and number of years of experience

* The second tab has some toggles that let users change what information is displayed in the list

To do this, build a view model that holds a list of people and the current user’s preferences. Access the model in the views by using the EnvironmentObject modifier.

# Exercise 9 - BLoC using Provider
This exercise is expected you to get yourself familiarized with BLoC in Flutter. These exercises assume you already have setup your environment for working with Flutter.

## Instructions
* You are required to setup the environment that you are planning to use this term for this course
* You need Flutter framework to be installed and configured on your local machine to work with these exercises
* This exercise is for your practice, no need to submit it for marking.

### Exercise
Create a Login Page (or use an existing one) and re-code it using BLoC approach. Perform the following:  
* Create a Provider Helper class that contains a `bool isLegit` variable.
* Provider Helper class should also contain a method `void checkCredentials(String email, String password)` that checks to see if the credentials provided are legitimate or not? For now check or any credentials.
* On the valid credentials, change `isLegit` to `true` and notify listeners as well. (You might have guessed it, Provider Helper should implement `ChangeNotifier` mix-in)
* Apply a `MultiProvider` to the app.
* Keep a watch on `isLegit` and see if it becomes `true`, your GUI should show a Snackbar of successful login.

Important: If you get an error `Tried to listen to a value exposed with provider, from outside of the widget tree`, replace `context.watch<ProviderHelper>()` and `context.read<ProviderHelper>()` with `Provider.of<ProviderHelper>(context, listen:false)`. This is just another way of triggering a provider.

Below is the expected output: <br />     
![Basic Layout](./images/bloc.png) &nbsp; &nbsp; &nbsp;  <br />



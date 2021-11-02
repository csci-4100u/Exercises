# Exercise 11 - Flutter and FireStore
This exercise is expected you to get yourself familiarized with FireStore in Flutter. These exercises assume you already have setup your environment for working with Flutter.

## Instructions
* You are required to setup the environment that you are planning to use this term for this course
* You need Flutter framework to be installed and configured on your local machine to work with these exercises
* This exercise is for your practice, no need to submit it for marking.

### Exercise
You are required to demonstrate the skills of using FireStore with Flutter app. For this purpose do the following:
* Create a new project in Firebase
* Configure it to work with your Flutter App
* Add a Database `fruits` and add some entries to it.
* Database should have a `name` and `quantity` (quantity should be integer/number). Add fruits in such a way that some of the fruits has quantity less than `5` and some more than `5`.
* Create a Flutter app, that has a `ListView` that shows all the fruits having quantity more than `5`. Do not display fruits that have quantity less than `5`.
* The app user interface should look similar to the app shown in the screenshot.
* Finaly, make sure the app is also able to delete an entry not only from the list but also from backend (FireStore). Use the following code to do that:

```
fruits.doc(docID).delete(),
```

You are required to figure out a way to get the id for each document to delete it.

Below is the expected output: <br />     
![Intermediate](https://github.com/csci-4100u/Exercises/blob/9fe5b5e277e201854c2215704c38bc1c92206966/Exercise%2011/images/exercise.PNG) &nbsp; &nbsp; &nbsp;  <br />



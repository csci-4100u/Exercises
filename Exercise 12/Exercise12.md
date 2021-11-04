# Exercise 12 - Flutter and HTTP
This exercise is expected you to get yourself familiarized with HTTP in Flutter. These exercises assume you already have setup your environment for working with Flutter.

## Instructions
* You are required to setup the environment that you are planning to use this term for this course
* You need Flutter framework to be installed and configured on your local machine to work with these exercises
* This exercise is for your practice, no need to submit it for marking.

### Basic
You are required to use HTTP to fetch data from `https://jsonplaceholder.typicode.com/todos` and show the title of todo in a `ListView` along with `id`, `userId` and `completed` status as the leading, trailing and subtext respectively text for the `ListView`. 

Below is the expected output: <br />     
![Intermediate](./images/Mobile_Device_Http_Basic.png) &nbsp; &nbsp; &nbsp;  <br />


### Intermediate
You are required to use HTTP to fetch data from `//http://universities.hipolabs.com/search?country=United+States`. You might notice in the url provided, you have a search query where you can specify the name of the country to fetch the list of all the universities in the country. Your task in this exercise is to fetch all the universities' names in Canada. You might want to take advantage of `Uri.http` to do that. Below is the uri's constructor:

```
(new) Uri Uri.http(
  String authority,
  String unencodedPath, [
  Map<String, dynamic>? queryParameters,
])
```

Take advantage of queryParameters to provide parameters for search for a specific country. Do not hard-code `Canada` in the URL, instead use queryParameter of Uri.http to work with the country provided (in this case Canada). You should still be using `FutureBuilder` to help you build your `ListView`.

Below is the expected output: <br />     
![Intermediate](https://github.com/csci-4100u/Exercises/blob/a4f4e491dcff89c4e34dd0e2b97b42ed0c14c2ce/Exercise%2012/images/Mobile_Device_Http_Basic.PNG) &nbsp; &nbsp; &nbsp;  <br />


### Challenging
You are required to use HTTP to fetch data from `https://api.imgflip.com/get_memes`. This API returns images for popular memes on the Internet. Your task in this exercise is to fetch all the images provided by this API and show them in a GridView in Flutter app. Keep using `FutureBuilder` to return `GridView.builder` to show the images returned by this API. You might need to read deep into the data provided back to you to get the URL of the image.

Below is the expected output: <br />     
![Intermediate](./images/Mobile_Device_Http_Challenging.png) &nbsp; &nbsp; &nbsp;  <br />

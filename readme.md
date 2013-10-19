Welcome to FunFactsApp
======

This app pulls data from numbersapi.com to display interesting trivia information about numbers. 

How do I use it?
------
Click on each fact to find out more information.

Code
------
MainViewController - controller for the main view, titled "numbers API Trivia!". Creates an XIWNumberDataManager and creates a tableview by filling each cell with information from the data manager. Also passes relevant information to the next view in the segue.

DataViewController - controller for the data view, titled "Trivia Data". Creates a tableview and dynamically fills in information from the NumberDataModel.

NumberDataManager - manager for the json data sent back from numbersapi.com. Creates an array where the index of the array correlates to the number of the data. Each array item is a NumberDataModel.

NumberDataModel - model for storing data about each number. It is a NSMutableDictionary, with keys for 'text', 'number', 'found', and 'type'.

WebRequestManager - checks for a valid connetion. If connection does not exist, return nil, otherwise perform the request and return the data.

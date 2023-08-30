# RobotFramework_Project

This Robot Framework test case demonstrates how to use the Selenium library to open Google, search for "robotframework" and print all the search results/links to both the console and a text file.

## Prerequisites

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- Chrome Web Browser

## Test Steps

1. Open Google in a web browser.
2. Enter "robotframework" into the search bar and press Enter.
3. Wait for the search results to load.
4. Extract and print the all the search result links.
5. Log the links to the console.
6. Append the links to a text file named 'search_results.txt'.

## Test Execution

1. Install Robot Framework and the SeleniumLibrary, if not already installed.
2. Make sure you have Chrome installed.
3. Create a Robot Framework test file as 'test.robot', and write the test case code into it.
4. Execute the test using the following command:
   robot AutomationRobot\test.robot

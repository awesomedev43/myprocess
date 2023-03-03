# MyProcess (New Name TBD)

Alternative to traditional todo application, this app allows you to create a `process`. The `processes` in this context is a list of steps needed to implement 

## Specs

### Definitions (V1)

- `checklist` 
	- List of `task`
	- A goal that is needed to be accomplished by the user
-  `task`
	- something to do
- `checklist instance`
		- Instance of checklist
		- Start Time
		- End Time

### Functionality (V1)

1. Allows user to create a `checklist`
	1. User defines the goal
	2. User defines the task
	3. User can used CRUD operations on any of the fields
3. Allow user to create a `checklist instance`
	1. Timer is started
	2. User is given list of steps to follow
	3. User can cycle through the steps
		- Each step is marked as done
	4. When all steps is marked the `checklist instance` is finished
	5. User is displayed a prompt showing the result
		- User can share the data with friend
	6. User can view past `checklist instances`



## Milestone 1

The first milestone will be just a cross platform application that works off a local database

## Milestone 2

In this milestone the project will integrate with a backend service
- Provide authentication using some signin provider
- User `checklist` and `checklist instances` are backed up in the cloud
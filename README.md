# Process Your Life (PYL)

Alternative to traditional todo application, this app allows you to create a `process`. A `process` in this context is a list of steps needed to reach a specific goal.

# Specs

## V1
---

<details>
<summary><b>Pending</b></summary>

- [ ] Ability to Delete Completed Task Instances
- [	] Replace Splashscreen
- [ ] New Name for the Application
- [ ] Info Screen for Completed Task
- [ ] Monetization for the Application
	- [ ] Ads
	- [ ] Pay to remove Ads

</details>

<details>
<summary><b>Description</b></summary>

The first milestone will be just a cross platform application that works off a local database
</details>

<details>
<summary><b>Definitions</b></summary>

- `process` 
	- a series of actions or steps taken in order to achieve a particular end
-  `task`
	- something to be done
-  `task instance`
	- Instance of a `task` that is in progress, or needs to be done
- `process instance`
		- Instance of `process` that is either in progress or needs to be done
		- Start Time
		- End Time
</details>

<details>
<summary><b>Functionality</b></summary>

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
</details>


## V2
---

<details>
<summary><b>Description</b></summary>

In this milestone the project will integrate with a backend service
- Provide authentication using some signin provider
- User `checklist` and `checklist instances` are backed up in the cloud
</details>
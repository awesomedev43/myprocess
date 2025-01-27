# Process Your Life (PYL)

Alternative to traditional todo application, this app allows you to create a `process`. A `process` in this context is a list of steps needed to reach a specific goal.

# Specs

## V1

---

<details>
<summary><b>Pending</b></summary>

- [X] Ability to Delete Completed Task Instances
- [X] Replace Splashscreen
- [X] New Name for the Application
- [X] Info Screen for Completed Task
- [ ] Get App ready for Publishing

</details>

<details>
<summary><b>Description</b></summary>

The first milestone will be just a cross platform application that works off a local database
</details>

<details>
<summary><b>Definitions</b></summary>

- `process`
 	- a series of actions or steps taken in order to achieve a particular end
- `task`
 	- something to be done
- `task instance`
 	- Instance of a `task` that is in progress, or needs to be done
- `process instance`
  - Instance of `process` that is either in progress or needs to be done
  - Start Time
  - End Time

</details>

<details>
<summary><b>Functionality</b></summary>

1. Allows user to create a `checklist`
 2. User defines the goal
 3. User defines the task
 4. User can used CRUD operations on any of the fields
2. Allow user to create a `checklist instance`
 3. Timer is started
 4. User is given list of steps to follow
 5. User can cycle through the steps
  - Each step is marked as done
 6. When all steps is marked the `checklist instance` is finished
 7. User is displayed a prompt showing the result
  - User can share the data with friend
 8. User can view past `checklist instances`

</details>
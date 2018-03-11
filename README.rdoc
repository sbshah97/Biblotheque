The heroku link for accessing the "LibSys" web application: 
https://calm-coast-3120.herokuapp.com/login

To login for the first time, use credentials:
username: admin@admin.org
password: admin123

*Important Note* - 
1. EMAIL FUNCTIONALITY IS IMPLEMENTED - To receive emails in case of book request, create new account with valid email address
                                        You can request notification for a checked out book
                                        When book is returned by user, email will be sent to the user who has requested notification
                                        Notification can be cancelled any time
                                        Right now, only one user can request notification for a book at a time
2. EDIT AND VIEW PROFILE - can be done by clicking on small arrow on right hand side upper corner of page.
3. CHECKOUT HISTORY - This is available for individual users on home page ("View Checkout History") or for all users for admin (Go to Manage USers and then View Checkout History) and also for a book (Go to All books/ search book), then click on Checkout History for a particular Book.

4. User who has books checked out is not allowed to be deleted by admin.
5. Book who is checked out by a user is not allowed to be deleted by admin.

For Editing other users' profile, Admin can go to Manage Users and then can do the required functions.

==================================================================================================================
Admin functions:

Below are the steps you can execute "TO MANAGE PROFILES" when you are logged in as admin :-

* View Profile
	- Drop down button on right corner >> "View Profile"
	
* Edit Profile
	- Drop down button on right corner >> "Edit Profile"

* View Users list
	- Go to "Manage Users" tab
	
* Add User
	- Go to "Manage Users" tab
	- Click "Add New User" >> Select if admin or library member
	
* View User Profiles
	- Go to "Manage Users" tab
	- Click "Show" for the user who's profile you want to view
	
* Edit User Profiles
	- Go to "Manage Users" tab
	- Click "Edit" for the user who's profile you want to edit
	
* Delete User Profile
	- Go to "Manage Users" tab
	- Click "Destroy" for the user who's profile you want to delete

* View Checkout History of a User
       - Go to Manage Users
       - Click on Checkout History in front of user name
	
Note: The view, edit and delete steps applies for viewwing/updating both admins and Library members.	
_________________________________________________________________________________________________________________

Below are the steps you can execute "TO MANAGE BOOKS" when you are logged in as admin :-

* Add Book
	- Go to "Manage Books" tab
	- Click "Add Book"
	
* View Books list
	- Go to "Manage Books" tab
		OR
	- Go to "All Books" tab
	
* View Book details
	- Go to "Manage Books" tab
	- Click "Show" for the book who's details you want to view
	
*  Edit Book details
	- Go to "Manage Books" tab
	- Click "Edit" for the book who's details you want to edit
	  Note: ISBN cannot be edited

*  Delete Book
	- Go to "Manage Books" tab
	- Click "Discard" for the book who's details you want to delete
	
==================================================================================================================
Library Member functions:

Below are the steps you can execute when you are logged in as a library member :-
	
* Edit Profile
	- Drop down button on right corner >> "Edit Profile"
	
* Search books
	- Go to "Search Books" tab
	- Enter the book details of one or more fields to search for a particular book.
	
* View self checkout history
	- Go to "My checkout history"
	
* Checkout book
	- Go to "Search books"
	- Search for the book you want to checkout
	- If "Status" = Available, click "Borrow"
	
* Request book
	- Go to "Search books"
	- Search for the book you want to request
	- If "Status" = Checked out, click "Request"
        - When book is returned by the borrower, email will be sent to member

* Return book
	- Go to "My Books" tab
	- Click "Return" button for the book yo want to return

*Cancel Book Request
        - If library member has requested a book, he can cancel request any time,
          in the same way as he has requested the book
        - In this case, Request button will be replaced by Cancel Request.
==================================================================================================================
	

* Some scenarios

        - If book is deleted, then it will not be accessible for checkout, but checkout history of user
           who had checked out that book previously will not be affected.

	

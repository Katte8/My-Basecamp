# Welcome to My Basecamp 1
***

## Task
Build a web-based project management tool inspired by Basecamp, allowing users to create accounts, manage sessions, and perform project-related actions. The project features role-based permissions with two types of users: regular users and admins.

## Description
MyBasecamp mimics the core features of Basecamp, including:

User Registration: Users can create, view, and delete their accounts.
Session Management: Users can log in and log out of the platform.
Role-Based Permissions: All users can create, edit, delete projects. Admin users have elevated privileges, such as deleting users.
Project Management: Users can create, view, update, and delete projects.
The application adheres to the MVC (Model-View-Controller) architecture using Ruby on Rails.

## Installation
1. Clone the Repository
git clone https://github.com/Katte8/My-Basecamp.git
cd mybasecamp
2. Install Dependencies
Ensure you have Ruby and Bundler installed. Then, run:
bundle install
3. Set Up the Database
Create and migrate the database:
rails db:create db:migrate
4. Seed Admin User (Optional). You can make an admin user from the web as well.
You can seed an admin user using the Rails console:
rails console
User.create(email: "admin@example.com", password: "password", role: "admin")
5. Start the Rails Server
Run the development server:
rails server
6. Visit the application at http://localhost:3000.

## Usage
1. User Registration
Navigate to the Sign Up page.
Create a new user account.

2. Session Management
Log in with your email and password.
Use the Log Out button to end the session.

3. Admin Permissions
Promote a user to admin:
rails console
user = User.find_by(email: "user@example.com")
user.update(role: 'admin')
Check if permission changed:
user = User.find(1)
puts user.role # It should now print 'admin'
Alternatively you can change your role on the web platform as well.

4. Revoke admin privileges:
Change the permission in the app or:
rails console
user = User.find(1)
user.update(role: 'user')
Verify the role change:
user = User.find(1)
puts user.role  # It should now print 'user'

5. Project Management
Change the permission in the app or:
Navigate to the Projects section after logging in.
Use the New Project button to create a project.
Edit or delete projects.

### The Core Team

<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>


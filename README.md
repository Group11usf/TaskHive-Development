# TASKHIVE

> TaskHive is an alternative to Canvas Calendar - used for tracking tasks and assignments all in one place

## Features
- Create Account: Create an account with your email and password
- Login: Authenticate with your email and password
- Dashboard: List all tasks added for this week only
- Calendar: Browse tasks sorted by date; click on a date to view or add tasks
- Task Details: Each task has a Title, Status (Not Started, Working, Completed), and Link
- Logout: Securely log out of your account

## How to Run
1. **Prerequisites**
   - Ruby v3.4.1
   - Bundler (`gem install bundler`)
2. **Clone the repository**
   ```bash
   git clone https://github.com/Group11usf/TaskHive-Development.git
   cd TaskHive
   ```
3. **Install dependencies**
   ```bash
   bundle install
   ```
4. **Set up the database**
   ```bash
   rails db:create      # create development & test databases
   rails db:migrate     # run all pending migrations
   ```
5. **Start the server**
   ```bash
   rails server         # shorthand: rails s
   ```
6. **Open your browser and visit** [http://localhost:3000](http://localhost:3000)

## Homepage

Below is a preview of the TaskHive homepage:

<img width="1434" alt="Screenshot 2025-05-23 at 12 56 14 PM" src="https://github.com/user-attachments/assets/f1c2ac88-a225-41bc-b660-385cda62af1d" />

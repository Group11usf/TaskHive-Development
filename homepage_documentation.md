# Rails Homepage Project Documentation

This project is a simple Ruby on Rails application that serves a homepage with a logo, navigation bar, and placeholders for a dashboard, calendar, and login feature. The project uses plain CSS for styling and includes unit tests to ensure functionality.

---

## File Structure

my_website/
├── app/
│ ├── assets/
│ │ ├── stylesheets/
│ │ │ └── application.css
│ │ ├── javascripts/
│ │ │ └── application.js
│ │ └── images/
│ │ └── logo.png
│ ├── controllers/
│ │ └── home_controller.rb
│ └── views/
│ └── home/
│ ├── index.html.erb
│ ├── dashboard.html.erb
│ ├── calendar.html.erb
│ └── login.html.erb
├── config/
│ └── routes.rb
├── test/
│ ├── controllers/
│ │ └── home_controller_test.rb
│ └── test_helper.rb
├── Gemfile
├── Gemfile.lock
├── README.md
└── .gitignore

---

## File Descriptions

### 1. `app/assets/stylesheets/application.css`
- **Purpose**: Contains the custom CSS styles for the application.
- **Details**:
  - Defines styles for the header, navigation bar, main content, and footer.
  - Uses plain CSS (no Bootstrap) for simplicity.
  - Ensures the layout is responsive and visually appealing.

---

### 2. `app/assets/javascripts/application.js`
- **Purpose**: Manages JavaScript dependencies and custom scripts.
- **Details**:
  - Includes jQuery and other libraries if needed.
  - Currently minimal, as the project does not require complex JavaScript functionality.

---

### 3. `app/assets/images/logo.png`
- **Purpose**: Stores the logo image for the website.
- **Details**:
  - Displayed in the header of the homepage.
  - Referenced in the `index.html.erb` view using the `image_tag` helper.

---

### 4. `app/controllers/home_controller.rb`
- **Purpose**: Handles the logic for the homepage and related pages.
- **Details**:
  - Defines actions for the homepage (`index`), dashboard, calendar, and login.
  - Each action renders the corresponding view.

---

### 5. `app/views/home/index.html.erb`
- **Purpose**: The main homepage view.
- **Details**:
  - Displays the website name, logo, and navigation bar.
  - Includes links to the dashboard, calendar, and login pages.
  - Uses ERB (Embedded Ruby) to dynamically render content.

---

### 6. `app/views/home/dashboard.html.erb`
- **Purpose**: Placeholder for the dashboard page.
- **Details**:
  - Displays a simple heading and placeholder content.
  - Can be expanded to include actual dashboard functionality.

---

### 7. `app/views/home/calendar.html.erb`
- **Purpose**: Placeholder for the calendar page.
- **Details**:
  - Displays a simple heading and placeholder content.
  - Can be expanded to include a calendar feature.

---

### 8. `app/views/home/login.html.erb`
- **Purpose**: Placeholder for the login page.
- **Details**:
  - Displays a simple heading and placeholder content.
  - Can be expanded to include a login form and authentication logic.

---

### 9. `config/routes.rb`
- **Purpose**: Defines the routes for the application.
- **Details**:
  - Maps the root URL (`/`) to the `home#index` action.
  - Defines routes for the dashboard, calendar, and login pages.

---

### 10. `test/controllers/home_controller_test.rb`
- **Purpose**: Contains unit tests for the `HomeController`.
- **Details**:
  - Tests that the homepage, dashboard, calendar, and login pages render successfully.
  - Uses assertions to verify the presence of specific content (e.g., website name, navigation links).

---

### 11. `test/test_helper.rb`
- **Purpose**: Provides helper methods and configuration for tests.
- **Details**:
  - Includes setup and teardown logic for tests.
  - Can be extended to include custom test helpers.

---

### 12. `Gemfile`
- **Purpose**: Lists the Ruby gems required for the project.
- **Details**:
  - Includes gems for Rails, testing, and asset management.
  - Specifies the Ruby version.

---

### 13. `Gemfile.lock`
- **Purpose**: Locks the versions of the gems specified in the `Gemfile`.
- **Details**:
  - Ensures consistent gem versions across environments.

---

### 14. `README.md`
- **Purpose**: Provides an overview of the project.
- **Details**:
  - Includes instructions for setting up and running the application.
  - Describes the project structure and features.

---

### 15. `.gitignore`
- **Purpose**: Specifies files and directories to exclude from version control.
- **Details**:
  - Excludes temporary files, logs, and sensitive data (e.g., `.env`, `config/credentials.yml.enc`).

---

## How to Set Up and Run the Project

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/my_website.git
   cd my_website

2. **Install Dependencies**:
   ```bash
   bundle install

3. **Set Up the Database** (if applicable):
   ```bash
   rails db:create
   rails db:migrate

4. **Run the Server**:
   ```bash
   rails server

5. **Access the Application**:
   Open your browser and visit http://localhost:3000.




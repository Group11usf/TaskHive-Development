# TaskHive Feature Documentation

## 1. Calendar & Task Management System

### 1.1 Features Added

#### A. Interactive Calendar
- Displays a monthly view with navigation (previous/next month).
- Highlights the current day.
- Clickable dates that link to their respective task pages.

#### B. Task Creation & Management
- **Add Tasks**: Users can create tasks with:
  - **Title** (required)
  - **Due date** (required, defaults to selected calendar day)
  - **Link** (optional, auto-formats with `https://` if missing)
- **View Tasks by Date**:
  - Lists all tasks for a selected day.
  - Shows task title and clickable link.
- **Delete Tasks**:
  - Individual task deletion with confirmation.

#### C. Visual Indicators
- Dates with tasks display a visual marker (dot or count).
- Responsive design for better usability.

---

## 2. How It Works

### 2.1 Key Components

| Component | Description |
|-----------|-------------|
| **Calendar View** (`/calendar`) | Displays a grid of days, navigable by month. |
| **Daily Task View** (`/calendar/date/:date`) | Shows tasks for a specific date. |
| **Task Form** | Form to add/edit tasks (appears on daily view). |

### 2.2 User Flow

1. **View Calendar**:
   - Navigate months using "Previous"/"Next" buttons.
   - Click a date to see its tasks.

2. **Add a Task**:
   - On the daily view (`/calendar/date/YYYY-MM-DD`), fill in:
     - **Title** (e.g., "Complete project").
     - **Link** (e.g., "example.com" → auto-converts to `https://example.com`).
   - Click **"Save Task"**.

3. **Delete a Task**:
   - Click the **× (delete button)** next to a task.
   - Confirm deletion in the pop-up.

---

## 3. Technical Implementation

### 3.1 Backend (Ruby on Rails)

#### Model
- **Task** (`title`, `link`, `due_date`).

#### Controller
- **TasksController** (`create`, `destroy`).

#### Routes
```ruby
get 'calendar/date/:date', to: 'tasks#show', as: 'task_date'
resources :tasks, only: [:create, :destroy]
```

### 3.2 Frontend (HTML/ERB + CSS)
**Calendar** : Rendered as an HTML table with dynamic navigation.

**Task Cards** : Styled with CSS for clear separation.

**Links** : Auto-formatted to open in a new tab (target="_blank").

## 4. For Developers
### 4.1 Setting Up
Ensure database migrations are up to date:

```
rails db:migrate
```
For test data, use FactoryBot for sample tasks.

### 4.2 Extending Features
- **Adding User Authentication**:

  - Restrict task management to logged-in users.

- **Recurring Tasks**:

  - Extend Task model with a recurrence field.

## 5. Troubleshooting
| Issue	| Solution |
|-------|----------|
|Tasks not saving?	| Check (`title`) and (`due_date`) (required fields). |
|Links not opening correctly?	| Ensure link starts with (`http:// or https://.`) |
|Calendar not updating?	| Verify (`rails db:migrate`) ran in test environment (`RAILS_ENV=test`). |

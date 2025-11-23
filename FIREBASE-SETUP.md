# Firebase Setup Instructions (5 minutes)

## Step 1: Create Firebase Project

1. Go to https://console.firebase.google.com/
2. Click "Add project"
3. Name it "URCM-Race" (or whatever you want)
4. Disable Google Analytics (not needed) → Click "Create project"
5. Wait for it to finish, then click "Continue"

## Step 2: Set Up Realtime Database

1. In the left sidebar, click "Build" → "Realtime Database"
2. Click "Create Database"
3. Choose location: **United States** (or closest to you)
4. Start in **TEST MODE** (we'll add password protection in the admin page)
5. Click "Enable"

## Step 3: Get Your Config

1. Click the gear icon (⚙️) next to "Project Overview" at the top
2. Click "Project settings"
3. Scroll down to "Your apps" section
4. Click the **</> (Web)** icon
5. Name it "URCM Web App" → Click "Register app"
6. **COPY THE CONFIG** - it looks like this:

```javascript
const firebaseConfig = {
  apiKey: "AIza....",
  authDomain: "your-app.firebaseapp.com",
  databaseURL: "https://your-app.firebaseio.com",
  projectId: "your-project-id",
  storageBucket: "your-app.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abc123"
};
```

## Step 4: Add Config to Your Files

1. Open `leaderboard.html` in a text editor
2. Find the line that says: `// REPLACE THIS WITH YOUR FIREBASE CONFIG`
3. Paste your config there (replace the placeholder)
4. Do the same for `admin.html`

## Step 5: Initialize Data (Before Race Day)

1. Open `admin.html` in your browser
2. Enter password: `urcm2024` (you can change this in admin.html)
3. Click "Initialize Race Data" button
4. This creates the database structure with sample runners/teams

## Step 6: Customize Runner/Team Names

1. In Firebase Console, click "Realtime Database"
2. You'll see the data structure
3. Click on each runner/team name to edit them
4. Change "Team 1", "Team 2", etc. to real team names
5. Changes save automatically

**OR** you can edit them directly in `admin.html` code before uploading

---

## Security Notes

- The password for admin page is hardcoded in `admin.html` (line ~50)
- Change `const ADMIN_PASSWORD = "urcm2024";` to your own password
- Firebase is in test mode - anyone with the URL *could* write to it
- For a one-day race, this is fine
- After the race, you can disable writes in Firebase Console → Realtime Database → Rules

---

## You're Done!

Upload all 3 files to GoDaddy:
- `index.html` (your homepage - unchanged)
- `leaderboard.html` (public view)
- `admin.html` (volunteer lap tracker)

**Public URL:** yoursite.com/leaderboard.html
**Admin URL:** yoursite.com/admin.html

Test it before race day by opening both pages and clicking some lap buttons!

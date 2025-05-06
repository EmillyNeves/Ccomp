# Gamified Academic Management Platform

A gamified academic management platform that transforms student learning into an interactive, RPG-style experience. The application provides dynamic tracking of academic progress, achievements, and personal development through engaging visual interfaces and game-like mechanics.

## Deployment to Vercel

This project is configured to deploy to Vercel without using Express.js. Follow these steps to deploy:

### Prerequisites

1. Create a Vercel account if you don't have one: [https://vercel.com/signup](https://vercel.com/signup)
2. Install the Vercel CLI: `npm i -g vercel`

### Setup Database

1. Create a PostgreSQL database (Recommended: [Neon](https://neon.tech/) for its serverless PostgreSQL compatibility with Vercel)
2. Get your database connection string

### Configure Environment Variables

1. In your Vercel dashboard, add the following environment variable:
   - `DATABASE_URL` - Your PostgreSQL connection string

### Deploy the Application

#### Option 1: Using the Vercel Dashboard

1. Import your GitHub repository in the Vercel dashboard
2. Configure the environment variables
3. Deploy the application

#### Option 2: Using the Vercel CLI

1. Login to Vercel CLI: `vercel login`
2. In the project root, run: `vercel`
3. Follow the prompts and configure the project
4. For production deployment, run: `vercel --prod`

### Project Structure

- `/api` - Serverless functions for Vercel
- `/client` - React frontend
- `/shared` - Shared types and schemas
- `vercel.json` - Vercel deployment configuration

## Local Development

To run the project locally:

1. Install dependencies: `npm install`
2. Set up the environment variables in a `.env` file
3. Start the development server: `npm run dev`

## Database Schema Migration

When deploying to Vercel, you need to manually run the database schema migration:

1. Install Drizzle Kit: `npm install -g drizzle-kit`
2. Run the migration: `drizzle-kit push --config=./drizzle.config.ts`

## API Structure

The API is structured as serverless functions under the `/api` directory:

- `/api/user.js` - User information
- `/api/user/avatar.js` - User avatar management
- `/api/courses.js` - Courses information
- `/api/tasks.js` - Tasks and assignments
- `/api/schedule.js` - Class schedule
- `/api/attendance.js` - Attendance records
- `/api/grades.js` - Grades and assessments
- `/api/notifications.js` - User notifications
# SebenzaSync

Internal project update platform for tracking and managing project updates across teams.

## Tech Stack

- **Framework**: Next.js 15 (App Router)
- **Language**: TypeScript
- **Styling**: TailwindCSS
- **UI Components**: shadcn/ui
- **Database**: PostgreSQL with Prisma ORM
- **File Storage**: AWS S3 (or UploadThing)
- **Authentication**: NextAuth.js (to be configured)

## Prerequisites

- Node.js 18+ and npm
- PostgreSQL database
- AWS S3 bucket (optional, for file uploads)

## Getting Started

### 1. Clone the repository

```bash
git clone <repository-url>
cd sebenzasync
```

### 2. Install dependencies

```bash
npm install
```

### 3. Set up Git hooks

```bash
npx husky init
echo "npm run lint" > .husky/pre-commit
```

### 4. Set up environment variables

Copy the `.env.example` file to `.env`:

```bash
cp .env.example .env
```

Update the `.env` file with your actual values:

- `DATABASE_URL`: Your PostgreSQL connection string
- `NEXTAUTH_SECRET`: Generate with `openssl rand -base64 32`
- `S3_*`: Your AWS S3 credentials (if using S3)
- `NEXT_PUBLIC_APP_URL`: Your app URL (use `http://localhost:3000` for local dev)

### 5. Set up the database

Initialize Prisma and run migrations:

```bash
npx prisma generate
npx prisma migrate dev --name init
```

### 6. Run the development server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to view the app.

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm start` - Start production server
- `npm run lint` - Run ESLint
- `npm run format` - Format code with Prettier
- `npm run format:check` - Check code formatting
- `npm test` - Run tests (placeholder)

## Project Structure

```
sebenzasync/
├── app/                  # Next.js App Router pages
│   ├── layout.tsx       # Root layout
│   ├── page.tsx         # Home page
│   ├── projects/        # Projects routes
│   └── updates/         # Updates routes
├── components/          # React components
│   └── ui/             # shadcn/ui components
├── lib/                # Utility functions
├── prisma/             # Prisma schema and migrations
│   └── schema.prisma   # Database schema
├── public/             # Static assets
└── .github/            # GitHub Actions workflows
```

## Database Schema

The initial schema includes placeholder models:

- `User` - User accounts
- `Project` - Project information
- `Update` - Project updates

These will be expanded as features are implemented.

## CI/CD

GitHub Actions workflow is configured to:

- Install dependencies
- Run linting
- Build the application
- Run database migrations (on main branch)
- Run tests

## Contributing

1. Create a feature branch from `main`
2. Make your changes
3. Ensure tests pass and code is formatted
4. Submit a pull request

## License

Private - Internal use only

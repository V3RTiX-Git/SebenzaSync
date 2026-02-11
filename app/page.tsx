import Link from 'next/link'

export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center p-24">
      <div className="z-10 max-w-5xl w-full items-center justify-center font-mono text-sm">
        <h1 className="text-4xl font-bold mb-8 text-center">
          Welcome to SebenzaSync
        </h1>
        <p className="text-center text-muted-foreground mb-8">
          Internal project update platform
        </p>
        <div className="flex gap-4 justify-center">
          <Link
            href="/projects"
            className="rounded-lg border border-transparent px-5 py-4 transition-colors hover:border-gray-300 hover:bg-gray-100 hover:dark:border-neutral-700 hover:dark:bg-neutral-800/30"
          >
            <h2 className="text-2xl font-semibold">
              Projects <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none">→</span>
            </h2>
            <p className="text-sm opacity-70">View and manage projects</p>
          </Link>
          <Link
            href="/updates"
            className="rounded-lg border border-transparent px-5 py-4 transition-colors hover:border-gray-300 hover:bg-gray-100 hover:dark:border-neutral-700 hover:dark:bg-neutral-800/30"
          >
            <h2 className="text-2xl font-semibold">
              Updates <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none">→</span>
            </h2>
            <p className="text-sm opacity-70">Browse latest updates</p>
          </Link>
        </div>
      </div>
    </main>
  )
}

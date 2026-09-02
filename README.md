# Hangar

Self-hosted maintenance tracker for household assets — vehicles, house systems, equipment.
Recurring maintenance schedules, a due/overdue dashboard, completion logging, and a daily
notification nudge.

The first version of this idea was an Excel + VBA scheduler I built in 2015 as a munitions
troop in the Air Force, tracking 30/90/180/365-day maintenance cycles for a fleet of
trailers. Hangar is that tool rebuilt properly, a decade of engineering later.

## What it does (v0.1)

- **Assets** — vehicles, house systems, anything with a maintenance life.
- **Schedules** — two recurrence kinds: interval ("every 90 days from last completion")
  and fixed-date ("annually in June"). Each with a reminder lead time.
- **Work orders** — complete a task, the next due date recomputes. History is append-only.
- **Dashboard** — one page: what's due, what's overdue, what's coming.
- **Notifications** — a daily background sweep posts due items to an
  [Apprise](https://github.com/caronc/apprise)-compatible webhook (`HANGAR_NOTIFY_URL`).

## Deliberately out of scope (v0.1)

Auth and users (deploy it somewhere private), usage/mileage-based schedules, attachments,
cost tracking, calendars/iCal, mobile apps, notification-channel abstraction. Small enough
to finish beats feature-complete.

## Stack

.NET 10 · ASP.NET Core Razor Pages · EF Core + SQLite · a `BackgroundService` for the
daily sweep · xUnit. Single deployable container.

## Build & run

Uses [just](https://github.com/casey/just):

```
just build    # compile
just test     # run the test suite
just run      # serve on http://localhost:6414
just watch    # hot-reload dev loop
```

## Status

v0.1 under active development (September 2026).

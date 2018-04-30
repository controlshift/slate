## Calendars

Calendars are collections of related events.

### Show

> GET response Body

```json
{
  "calendar": {
    "name": "Movie Screenings For Healthcare Access",
    "description": "We're watching this amazing and powerful movie about the fight for health care for all.",
    "slug": "movie-screenings-for-healthcare-access",
    "url": "https://demo.controlshiftlabs.com/calendars/movie-screenings-for-healthcare-access",
    "partnership": {
      "slug": "physicians-for-a-national-health-program",
      "url": "https://demo.controlshiftlabs.com/partnerships/physicians-for-a-national-health-program"
    }
  }
}
```

Find information about a calendar by URL slug.

`GET /api/v1/calendars/movie-screenings-for-healthcare-access`

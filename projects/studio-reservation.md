# Studio Reservation System

**Technologies:** Odoo 17, Python, Calendar View, PostgreSQL
**Role:** Full Stack Odoo Developer

![Project Screenshot](../assets/studio_reservation.png)

## Overview
Application developed with Odoo allowing complete management of studio reservations. The system offers time slot planning, client management, real-time availability tracking, and reservation automation to optimize organization and reduce scheduling conflicts.

## Key Features
- **Smart Scheduling**: Visual calendar interface for managing studio slots.
- **Conflict Resolution**: Automated checks to prevent double-booking.
- **Client Management**: Integrated CRM for customer history and preferences.
- **Real-time Availability**: Dashboard showing instant studio status.

## Implementation Details
Leveraged Odoo's native `web_gantt` (or calendar) views to provide an intuitive drag-and-drop interface for studio managers.

```python
# Example: Availability Check Constraint
@api.constrains('start_datetime', 'end_datetime', 'studio_id')
def _check_overlap(self):
    for booking in self:
        domain = [
            ('studio_id', '=', booking.studio_id.id),
            ('start_datetime', '<', booking.end_datetime),
            ('end_datetime', '>', booking.start_datetime),
            ('id', '!=', booking.id)
        ]
        if self.search_count(domain) > 0:
            raise ValidationError("Studio is already booked for this time slot.")
```

## Links
- [View on GitHub](#)

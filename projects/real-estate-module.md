# Real Estate Management Module

**Technologies:** Odoo 16, Python, XML, PostgreSQL  
**Role:** Lead Developer

![Project Screenshot](../assets/studio_reservation.png)

## Overview
A comprehensive Odoo module designed to manage the entire lifecycle of property leasing and sales. The goal was to replace a legacy spreadsheet-based system with a centralized, automated solution integrated directly into the client's ERP.

## Key Features
- **Property Portfolio Management**: Track property details, availability, and maintenance history.
- **Tenant Portal**: Custom portal view for tenants to view lease agreements and submit maintenance requests.
- **Automated Invoicing**: Recurring invoice generation based on lease contract terms (monthly/quarterly).
- **Interactive Reports**: Dynamic pivot views for occupancy rates and revenue forecasting.

## Implementation Details
The module extends the standard Odoo `account.move` model to link invoices directly to lease contracts. I utilized Odoo's `mail.thread` mixin to enable communication tracking on every property record.

```python
# Example: Automated Invoice Generation Logic
class PropertyLease(models.Model):
    _name = 'property.lease'
    
    def action_generate_invoice(self):
        for lease in self:
            # Logic to create invoice based on lease terms
            pass
```

## Challenges & Solutions
**Challenge:** Handling complex pro-rata calculations for mid-month move-ins.  
**Solution:** Implemented a custom utility function using Python's `dateutil` to calculate exact billing days and update the first invoice line item accordingly.

## Links
- [View on GitHub](https://github.com/)  
- [Live Demo Video](https://youtube.com/)

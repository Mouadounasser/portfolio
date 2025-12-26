# Inventory API Integration

**Technologies:** Odoo 17, Python, REST API, JSON, PostgreSQL  
**Role:** Backend Developer

![Project Screenshot](../assets/project_placeholder.png)

## Overview
This project involved synchronizing a high-volume retail client's Odoo Inventory with their external e-commerce platform (Shopify/WooCommerce). The requirement was near real-time stock updates to prevent overselling.

## Key Features
- **Bi-Directional Sync**: Product creation in Odoo pushes to web; sales on web deduct stock in Odoo.
- **Webhooks**: Implemented custom controllers to listen for order webhooks from the e-commerce site.
- **Error Handling**: comprehensive logging system to track failed sync attempts and auto-retry logic.

## Implementation Details
We utilized the `http.Controller` in Odoo to expose secure endpoints.

```python
# Example: Webhook Controller
class InventoryWebhook(http.Controller):
    @http.route('/api/inventory/update', type='json', auth='public')
    def update_inventory(self, **kwargs):
        # Validate token and update stock quant
        return {'status': 'success'}
```

## Challenges & Solutions
**Challenge:** API rate limits on the external platform during bulk updates.  
**Solution:** Implemented a queueing system (Odoo cron jobs) to batch updates and process them respecting the rate limits.

## Links
- [View on GitHub](https://github.com/)

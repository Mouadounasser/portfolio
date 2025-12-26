# Custom Manufacturing Workflow

**Technologies:** Odoo 15, Python, Odoo Workflows  
**Role:** Odoo Developer

![Project Screenshot](../assets/project_placeholder.png)

## Overview
Designed to streamline a multi-stage manufacturing process for a furniture factory. The standard Odoo MRP was customizable, but the client needed strict enforcement of quality checks before everyday production moves.

## Key Features
- **Stage-Gating**: Production cannot move to "Assembly" until "Cutting" quality check passes.
- **Material Requisition**: Automated internal transfer requests for raw materials based on the BOM at specific stages.
- **Worker Time Tracking**: Tablet view customization for factory floor workers to easily log time.

## Implementation Details
Inherited `mrp.production` and added a new state machine logic.

```xml
<!-- Example: Workflow transition view -->
<record id="view_mrp_production_form_inherit" model="ir.ui.view">
    <field name="name">mrp.production.form.inherit</field>
    <field name="model">mrp.production</field>
    <field name="inherit_id" ref="mrp.view_mrp_production_form"/>
    <field name="arch" type="xml">
        <button name="button_mark_done" position="attributes">
            <attribute name="attrs">{'invisible': [('quality_check_passed', '=', False)]}</attribute>
        </button>
    </field>
</record>
```

## Challenges & Solutions
**Challenge:** Workers found the standard interface too complex on small tablets.  
**Solution:** Developed a simplified "Kiosk Mode" view using standard QWeb reports and a simplified Form View specific to the heavy touchscreen devices.

## Links
- [View on GitHub](https://github.com/)

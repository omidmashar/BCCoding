
profile SalesOrderProc
{
    //Caption = 'Sales Order Processor Extension';
    // CAPTION is use for runtime 4 and earlier
    // but in runtime 3 we acan use DESCRIPTION
    Caption = 'Sales Order Processor Extension';
    RoleCenter = "Order Processor Role Center";
    Customizations = SalesCreditMemoCust;
}
pagecustomization SalesCreditMemoCust customizes "Sales Credit Memo"
{
    layout
    {
        modify("No.")
        {

            Importance = Standard;
            Visible = true;


        }
        modify("External Document No.")
        {
            Importance = Additional;
            Visible = true;
        }
        moveafter(Status; "Due Date")
    }

    actions
    {
        modify(Dimensions)
        {
            Visible = false;

        }
        modify(Statistics)
        {
            Visible = false;
        }
    }

    //Variables, procedures and triggers are not allowed on Page Customizations
}
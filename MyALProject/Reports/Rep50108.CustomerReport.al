report 50108 "Customer Report"
{
    ApplicationArea = All;
    Caption = 'Customer Report';
    UsageCategory = ReportsAndAnalysis;


    RDLCLayout = 'Customer Report.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(County; County)
            {
            }
            column(Balance; Balance)
            {
            }
            column(ContactType; "Contact Type")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}

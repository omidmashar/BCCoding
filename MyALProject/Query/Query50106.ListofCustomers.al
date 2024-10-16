query 50106 "List of Customers"
{
    Caption = 'List of Customers';
    QueryType = Normal;
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {

            }
            column(Address; Address)
            {
            }
            column(Balance; Balance)
            {
            }
            column(City; City)
            {
            }
            column(County; County)
            {
            }
            column(Contact; Contact)
            {
            }
            column(EMail; "E-Mail")
            {
            }
            column(MobilePhoneNo; "Mobile Phone No.")
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}

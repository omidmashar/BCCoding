query 50107 "Top 5 Customers"
{
    QueryType = Normal;
    Caption = 'Top 5 Customers';
    TopNumberOfRows = 5;
    OrderBy = descending(Sales_LCY_Sum);
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            filter(Posting_Date; "Posting Date")
            {

            }
            column(Customer_No; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(Sales_LCY_Sum; "Sales (LCY)")
            {
                Method = Sum;
            }

        }
    }

}
query 50108 "Employees List"
{
    QueryType = Normal;
    Caption = 'Employees Query';
    QueryCategory = 'Employee List';


    elements
    {
        dataitem(Emp; Employee)
        {
            column(EmpNo; "No.")
            {

            }
            column(EmpName; "First Name")
            {

            }
            dataitem(Fixed_Asset; "Fixed Asset")
            {
                DataItemLink = "No." = Emp."No.";
                SqlJoinType = InnerJoin;

                // column(Sum_of_Quantity; Quantity)
                // {
                //     Method = Sum;

                // }
            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}
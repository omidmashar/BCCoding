page 50115 "Actions Demo"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;


    layout
    {
        area(Content)
        {

            group(Input)

            {
                Caption = 'Input';
                field(Initialamount; Initialamount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Initial Amount';
                    Caption = 'Initial Amount';

                }
                field(NoOfYears; NoOfYears)
                {
                    ApplicationArea = All;
                    ToolTip = 'No Of Years';
                    Caption = 'No Of Years';
                }
                field(RateOfInterest; RateOfInterest)
                {
                    ApplicationArea = All;
                    ToolTip = 'Rate Of Interest';
                    Caption = 'Rate Of Interest';
                }
            }

            group(Output)

            {
                Caption = 'Output';
                field(FinalAmount; FinalAmount)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Final Amount';
                    Caption = 'Final Amount';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Calculate Simple Interest")
            {
                ApplicationArea = All;
                Caption = 'Calculate the Interest';
                Image = ExecuteBatch;
                ToolTip = 'Interest Calculation';
                trigger OnAction()
                begin
                    FinalAmount := Initialamount * (1 + RateOfInterest * NoOfYears);
                    Message('%1', FinalAmount);
                end;

            }
        }
        area(Navigation)
        {
            action("Customer")
            {
                ApplicationArea = All;
                Caption = 'Top 5 Customers';
                RunObject = query "Top 5 Customers";
                Image = AddContacts;


            }
            action("Sales")
            {
                ApplicationArea = All;
                Caption = 'List of Customers';
                RunObject = query "List of Customers";
                Image = Sales;
            }
        }

        area(Creation)
        {
            action("New Customer")
            {
                ApplicationArea = All;
                Caption = 'New Customer';
                RunObject = page "Customer Card";
                Image = Post;
            }
        }
        area(Reporting)
        {
            group(TopNCustomer)
            {
                Caption = 'Top N Customer';
                action("Top N Customer")
                {
                    ApplicationArea = All;
                    RunObject = report TopNCustomers;
                    Image = Report2;
                }
            }

        }

    }

    var
        Initialamount: Decimal;
        NoOfYears: Integer;
        RateOfInterest: Decimal;

        FinalAmount: Decimal;
}
page 50117 "Actions Report"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;


    layout
    {


    }

    actions
    {
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
}
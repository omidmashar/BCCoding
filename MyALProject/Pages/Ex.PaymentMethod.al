pageextension 50124 PaymentMethodExtention extends "Payment Methods"
{
    layout
    {
        modify("Bal. Account No.")
        {
            Visible = false;
        }
        addlast(Control1)
        {
            field(BalanceAccount; Rec."BalanceAccount No.")
            {
                ApplicationArea = All;
                Caption = 'Bal. Account No.';
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
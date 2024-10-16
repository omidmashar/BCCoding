pageextension 50114 "Social Media" extends "Customer Card"
{
    layout
    {
        addfirst("Address & Contact")
        {
            field(Facebook; Rec.Facebook)
            {
                ApplicationArea = All;
            }
            field(Instagram; Rec.Instagram)
            {
                ApplicationArea = All;
            }
            field(Twitter; Rec.Twitter)
            {
                ApplicationArea = All;
            }
            field(Linkedin; Rec.Linkedin)
            {
                ApplicationArea = All;
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
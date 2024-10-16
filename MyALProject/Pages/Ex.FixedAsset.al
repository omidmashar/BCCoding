pageextension 50122 FixedAssetListExtention extends "Fixed Asset List"
{
    layout
    {
        modify("No.")
        {
            Visible = false;
        }
        modify("FA Location Code")
        {
            Visible = false;
        }
        modify(Acquired)
        {
            Visible = false;
        }
        modify("Responsible Employee")
        {
            Caption = 'Employee ID';
        }

        addfirst(Control1)
        {

            field(FixedAssetNo; Rec.FixedAssetNo)
            {
                ApplicationArea = All;
                Caption = 'No.';
            }
            field(EmployeeName; Rec.EmployeeName)
            {
                ApplicationArea = All;
                Caption = 'Employee Name';
            }
            field(usefullife; Rec.usefullife)
            {
                ApplicationArea = All;
                Caption = 'Useful Life';
            }
            field("Serial No."; Rec."Serial No.")
            {
                ApplicationArea = All;
                Caption = 'Serial No';
            }
            field(Maker; Rec.Maker)
            {
                ApplicationArea = All;
            }
            field(Model; Rec.Model)
            {
                ApplicationArea = All;
            }
            field(Condition; Rec.Condition)
            {
                ApplicationArea = All;
            }
            field(Department; Rec.Department)
            {
                ApplicationArea = All;
            }
            field(FALocation; Rec.FALocation)
            {
                ApplicationArea = All;
                Caption = 'FA Lcation';
            }
            field(Inactive; Rec.Inactive)
            {
                ApplicationArea = All;
                Caption = 'FA Status';
            }
        }
    }
    actions
    {

        addbefore("Fixed Assets List")
        {
            action("New Fixed Asset Report")
            {
                ApplicationArea = All;
                Image = Report;
                RunObject = report "Fixed Asset Details"; // Replace with your report ID
                ToolTip = 'Run the custom Fixed Asset Excel Report.';
            }


        }


    }

}

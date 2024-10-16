table 50111 Employe
{
    Caption = 'Employee Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Employee Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Employee Name"; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(40; DateOfJoining; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50; City; Option)
        {
            OptionMembers = Kabul,Logar,Nangarhar;
            DataClassification = ToBeClassified;
        }

        field(60; Gender; Option)
        {
            OptionMembers = Male,Female,"Not willing to say";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(pk; "Employee Code")
        {
            Clustered = true;
        }
        key(sk; City)
        {

        }
    }

    // fieldgroups
    // {
    //     // Add changes to field groups here
    // }

    // var
    //     myInt: Integer;

    trigger OnInsert()
    begin

        Message('Data is Inserted');

    end;

    trigger OnModify()
    begin
        Message('Data is Edited');
    end;

    trigger OnDelete()
    begin
        Message('Data is Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data is Renamed');
    end;

}
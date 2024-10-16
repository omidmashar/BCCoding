tableextension 50118 "Fixed Asset Detials" extends "Fixed Asset"
{
    fields
    {

        // Modify existing field
        field(50099; FixedAssetNo; Code[50])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }

        field(50101; FundSource; Text[50])
        {
            Caption = 'Fund Source';
            DataClassification = ToBeClassified;
        }
        field(50102; usefullife; Integer)
        {
            Caption = 'Useful Life';
            DataClassification = ToBeClassified;
        }

        field(50105; AcquisitionCurrency; Text[20])
        {
            Caption = 'Acquisition Currency';
            DataClassification = ToBeClassified;

        }
        field(50106; AcquisitionCost; Text[30])
        {
            Caption = 'Acquisition Cost (USD)';
            DataClassification = ToBeClassified;
        }
        field(50107; AcquisitionStartDate; Date)
        {
            Caption = 'Acquisition Star Date';
            DataClassification = ToBeClassified;
            TableRelation = "FA Depreciation Book";
        }
        field(50113; AcquisitionEndDate; Date)
        {
            Caption = 'Acquisition Start Date';
            DataClassification = ToBeClassified;
            TableRelation = "FA Depreciation Book";

        }
        field(50114; EmployeeName; Text[30])
        {
            Caption = 'Employee Name';
            DataClassification = ToBeClassified;
        }
        field(50108; Maker; Text[30])
        {
            Caption = 'Maker';
            DataClassification = ToBeClassified;
        }
        field(50109; Model; Text[100])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;
        }
        field(50110; Condition; Text[100])
        {
            Caption = 'Condition';
            DataClassification = ToBeClassified;

        }

        field(50111; Department; Text[100])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
        }
        field(50112; FALocation; Option)
        {
            Caption = 'FA Location';
            DataClassification = ToBeClassified;
            OptionMembers = "United States",UK,Kabul,Doha,Iraq,"All Other";
        }
    }
}

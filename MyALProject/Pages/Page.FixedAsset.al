pageextension 50120 FixedAssetDetails extends "Fixed Asset Card"
{

    layout
    {
        // Modify an existing group and fields
        modify(General)
        {
            Caption = 'General Information';
        }
        modify("Depreciation Book")
        {
            Caption = 'Acquisition Info and Cost';
        }
        modify(DepreciationStartingDate)
        {
            Caption = 'Acquisition Start Date';
        }
        modify(DepreciationEndingDate)
        {
            Caption = 'Acquisition End Date';
        }

        modify(Inactive)
        {
            Caption = 'FA Status';
        }
        //moveafter(Description; "Serial No.")

        addfirst(General)
        {

            field(FixedAssetNo; Rec.FixedAssetNo)
            {
                ApplicationArea = All;
                Caption = 'No.';
            }
            field(FundSource; Rec.FundSource)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }
            field(usefullife; Rec.usefullife)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }


            field("Responsible EmployeeID"; Rec."Responsible Employee")
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
                ToolTip = 'Specifies the employee no';
                trigger OnValidate()
                var
                    EmployeeRec: Record Employee;
                begin
                    // Check if Employee ID is selected and find the corresponding employee record
                    if EmployeeRec.Get(Rec."Responsible Employee") then begin
                        // Set Employee Name automatically
                        Rec."EmployeeName" := EmployeeRec."First Name" + ' ' + EmployeeRec."Last Name";
                    end else begin
                        Rec."EmployeeName" := '';
                    end;
                end;
            }
            field("Employee Name"; Rec.EmployeeName)
            {
                ShowMandatory = true;
                Caption = 'Employee Name';
                NotBlank = true;
                ApplicationArea = All;
                Editable = false; // Employee Name should be non-editable since it cascades
                ToolTip = 'Specifies the employee''s name';
            }


            field(Maker; Rec.Maker)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }
            field(Model; Rec.Model)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }
            field(Condition; Rec.Condition)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }
            field(Department; Rec.Department)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }
            field(FALocation; Rec.FALocation)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }
            // field(FAStatus; Rec.FAStatus)
            // {
            //     ApplicationArea = All;
            //     ShowMandatory = true;
            //     NotBlank = true;
            // }

        }
        addfirst("Depreciation Book")
        {
            field(AcquisitionCurrency; Rec.AcquisitionCurrency)
            {
                ApplicationArea = All;
            }
            field(AcquisitionCost; Rec.AcquisitionCost)
            {
                ApplicationArea = All;
                ShowMandatory = true;
                NotBlank = true;
            }
        }

    }


}
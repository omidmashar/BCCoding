query 50122 "Fixed Asset Details"
{
    QueryType = Normal;
    Caption = 'Fixed Asset Details';
    OrderBy = descending(FixedAssetNo);
    QueryCategory = 'Fixed Asset';


    elements
    {


        dataitem(FixedAsset; "Fixed Asset")
        {
            dataitem(FA_Depreciation_Book; "FA Depreciation Book")
            {
                DataItemLink = "FA No." = FixedAsset."No.";
                SqlJoinType = InnerJoin;

                column(Depreciation_Starting_Date; "Depreciation Starting Date")
                {

                    Caption = 'Acquisition Start Date';
                }
                column(Depreciation_Ending_Date; "Depreciation Ending Date")
                {
                    Caption = 'Acquisition End Date';

                }

            }
            column(FixedNo; "No.")
            {
                Caption = 'Sr.No';
            }
            column(FixedAssetNo; FixedAssetNo)
            {
            }
            column(Description; Description)
            {
            }
            column(SerialNo; "Serial No.")
            {
            }
            column(FundSource; FundSource)
            {
            }
            column(usefullife; usefullife)
            {
                Caption = 'Useful life';
            }

            column(AcquisitionCurrency; AcquisitionCurrency)
            {
            }
            column(AcquisitionCost; AcquisitionCost)
            {
            }

            column(ResponsibleEmployee; "Responsible Employee")
            {
                Caption = 'Employee ID';
            }
            column(EmployeeName; EmployeeName)
            {

            }
            column(FASubclassCode; "FA Subclass Code")
            {
                Caption = 'FA Sub-class Code';
            }
            column(Maker; Maker)
            {
            }
            column(Model; Model)
            {
            }
            column(Condition; Condition)
            {
            }

            column(Department; Department)
            {

            }
            column(FALocation; FALocation)
            {
            }
            column(Inactive; Inactive)
            {
                Caption = 'FA Status';
            }
            column(Last_Date_Modified; "Last Date Modified")
            {
            }
        }

    }


}
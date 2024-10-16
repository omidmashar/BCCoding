report 50123 "Fixed Asset Details"
{
    UsageCategory = Administration;
    ApplicationArea = All;

    DefaultLayout = RDLC;
    RDLCLayout = 'Fixed Asset Details.rdl';


    dataset
    {
        dataitem(Integer; Integer)
        {
            column(RowNumber; AutoNumber)
            {

            }
            column(FixedNo; FixedAssetQuery.FixedNo)
            {

            }
            column(FixedAssetNo; FixedAssetQuery.FixedAssetNo)
            {

            }
            column(Description; FixedAssetQuery.Description)
            {

            }
            column(SerialNo; FixedAssetQuery.SerialNo)
            {

            }
            column(DepreciationStartingDate; FixedAssetQuery.Depreciation_Starting_Date)
            {

            }
            column(DepreciationEndingDate; FixedAssetQuery.Depreciation_Ending_Date)
            {

            }
            column(FundSource; FixedAssetQuery.FundSource)
            {
            }
            column(usefullife; FixedAssetQuery.usefullife)
            {

            }

            column(AcquisitionCurrency; FixedAssetQuery.AcquisitionCurrency)
            {
            }
            column(AcquisitionCost; FixedAssetQuery.AcquisitionCost)
            {
            }

            column(ResponsibleEmployee; FixedAssetQuery.ResponsibleEmployee)
            {

            }
            column(EmployeeName; FixedAssetQuery.EmployeeName)
            {

            }
            column(FASubclassCode; FixedAssetQuery.FASubclassCode)
            {

            }
            column(Maker; FixedAssetQuery.Maker)
            {
            }
            column(Model; FixedAssetQuery.Model)
            {
            }
            column(Condition; FixedAssetQuery.Condition)
            {
            }

            column(Department; FixedAssetQuery.Department)
            {

            }
            column(FALocation; FixedAssetQuery.FALocation)
            {
            }
            column(Inactive; FixedAssetQuery.Inactive)
            {

            }
            column(Last_Date_Modified; FixedAssetQuery.Last_Date_Modified)
            {
            }
            trigger OnPreDataItem()
            begin
                FixedAssetQuery.Open()
            end;

            trigger OnAfterGetRecord()
            begin
                AutoNumber += 1;
                IF not FixedAssetQuery.Read() then
                    CurrReport.Break();

            end;

        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }


    var
        FixedAssetQuery: Query "Fixed Asset Details";
        AutoNumber: Integer;
}
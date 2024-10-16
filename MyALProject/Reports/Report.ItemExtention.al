reportextension 50121 "Fixed Asset Reports" extends "Fixed Asset - List"
{
    dataset
    {
        add("Fixed Asset")
        {
            column(AUAFNO; FixedAssetNo)
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
            }

            column(AcquisitionCurrency; AcquisitionCurrency)
            {
            }
            column(AcquisitionCost; AcquisitionCost)
            {
            }
            column(FA_Subclass_Code; "FA Subclass Code")
            {
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

            column(SearchDescription; "Search Description")
            {
            }
        }
    }
    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'ItemPriceList.rdl';
        }
    }

}

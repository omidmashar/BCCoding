tableextension 50126 "Ex.Contract" extends "Service Contract Header"
{
    fields
    {
        field(50100; ContractDetails; Text[2048])
        {
            Caption = 'Contract Details';
            DataClassification = ToBeClassified;
        }
    }
}
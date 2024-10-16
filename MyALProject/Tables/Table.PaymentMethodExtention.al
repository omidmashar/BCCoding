tableextension 50124 "Table.PaymentMethodExtention" extends "Payment Method"
{
    fields
    {
        field(50101; "BalanceAccount Type"; enum "Payment Balance Account Type")
        {
            Caption = 'Bal. Account Type';

            trigger OnValidate()
            begin
                "Bal. Account No." := '';
            end;
        }
        field(50102; "BalanceAccount No."; Code[20])
        {

            TableRelation = IF ("Bal. Account Type" = CONST("G/L Account")) "G/L Account"

            ELSE IF ("Bal. Account Type" = CONST("Bank Account")) "Bank Account"

            ELSE IF ("Bal. Account Type" = CONST("MOF")) "Vendor";

        }
    }
}

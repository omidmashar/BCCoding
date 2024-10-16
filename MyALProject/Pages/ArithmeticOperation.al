page 50116 Arithmetic
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Arithmetic Operators';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Enter the values here';
                field(value1; value1)
                {
                    ApplicationArea = All;
                    Caption = ' First Number';

                }
                field(value2; value2)
                {
                    ApplicationArea = All;
                    Caption = 'Second Number';

                }
            }
            group(Output)
            {

                Caption = 'The resualts shows here';
                field(summ; summ)
                {
                    ApplicationArea = All;

                }
                field(prod; prod)
                {
                    ApplicationArea = All;
                }
                field(diff; diff)
                {
                    ApplicationArea = All;
                }
                field(divint; divint)
                {
                    ApplicationArea = All;
                }
                field(quo; quo)
                {
                    ApplicationArea = All;
                }
                field(modd; modd)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute here';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    summ := value1 + value2;
                    prod := value1 * value2;
                    modd := value1 MOD value2;
                    divint := value1 DIV value2;
                    diff := value1 - value2;
                    quo := value1 / value2;
                end;
            }
        }
    }

    var
        value1: Integer;
        value2: Integer;
        summ: Integer;
        prod: Integer;
        diff: Integer;
        divint: Decimal;
        quo: Decimal;
        modd: Decimal;

}
page 50100 MyCustomPage
{
    PageType = Card;
    // ApplicationArea = All;

    layout
    {
        area(content)
        {

            usercontrol(CustomTextBox; "CustomTextBoxAddin")
            {
                //Caption = 'My Document Content';
                ApplicationArea = All;
                //MultiLine = true;         // Ensure it's multiline
            }


        }
    }
}

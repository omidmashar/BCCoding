pageextension 50125 ExtentionPurchaseOrder extends "Service Contract"
{

    layout
    {
        addfirst(content)
        {
            field(ContractDetails; Rec.ContractDetails)
            {
                ApplicationArea = All;
                MultiLine = true;
                Visible = true;
            }
        }
    }
    actions
    {

        addfirst(Processing)
        {

            action(UploadFile)
            {
                Caption = 'Upload Document';
                ApplicationArea = All;

                // trigger OnAction()
                // var
                //     InStream: InStream;
                //     FileContent: Text;
                // begin
                //     if UploadIntoStream('Select a .txt file', '', 'txt', InStream) then begin
                //         // Read the file content
                //         FileContent := ReadTextFromFile(InStream);

                //         // Display content in a textbox (Stored in a variable)
                //         MyDocumentContent := FileContent;
                //         Modify(true);
                //     end else
                //         Message('No file selected.');
                // end;
            }
        }
    }
    var
        MyDocumentContent: Text;

    local procedure ReadTextFromFile(var InStr: InStream): Text
    var
        Txt: Text;
        Line: Text[2000]; // Adjust the length as needed
    begin
        Txt := '';
        while not InStr.EOS do begin
            InStr.ReadText(Line);
            Txt += Line + '\n';
        end;
        exit(Txt);
    end;
    // Add a variable to hold the file content

}

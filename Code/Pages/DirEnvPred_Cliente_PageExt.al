pageextension 50100 "DirEnvioPred" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(Shipping) {
            field("Default Ship-To Address";"Default Ship-To Address")
            {
                ApplicationArea=all;
            }
        }
    }
    
}
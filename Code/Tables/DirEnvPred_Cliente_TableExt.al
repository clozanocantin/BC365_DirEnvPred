tableextension 50100 DirEnvioPred extends "Customer"
{
    fields
    {
        // Add changes to table fields here
        field(50100; "Default Ship-To Address"; Code[20])
        {
            CaptionML=ENU='Default Ship-To Address',ESP='Dirección Envío Predeterminada';
            TableRelation="Ship-to Address".Code where ("Customer No."=field("No."));
            ValidateTableRelation=true;
        }
    }
}
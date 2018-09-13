codeunit 50100 DirEnvPred_PedVenta
{
    trigger OnRun()
    begin
        
    end;
    [EventSubscriber(ObjectType::Table, 36, 'OnAfterValidateEvent', 'Sell-to Customer No.', true,true)]
    local procedure InformarDirEnvioPred(VAR Rec : Record "Sales Header";VAR xRec : Record "Sales Header";CurrFieldNo : Integer)
    var
        Customer:Record Customer;
    begin
        if Customer.Get(Rec."Sell-to Customer No.") then
        begin
            if Customer."Default Ship-To Address" <> '' then
                Rec.Validate("Ship-to Code",Customer."Default Ship-To Address");
        end;        
    end;
}
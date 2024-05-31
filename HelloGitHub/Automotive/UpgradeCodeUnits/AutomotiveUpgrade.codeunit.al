codeunit 50006 AutomotiveUpgrade
{
    SubType = Upgrade;

    trigger OnUpgradePerCompany()
    var
        Automotive: Record Automotive;
        UpgradeTag: CodeUnit "Upgrade Tag";
    begin
        //if (UpgradeTag.HasUpgradeTag(UpgradeTagLbl))

    end;

    var
        UpgradeTagLbl: Label 'MAnufac-and-model-29-05-2024', Locked = true;
}
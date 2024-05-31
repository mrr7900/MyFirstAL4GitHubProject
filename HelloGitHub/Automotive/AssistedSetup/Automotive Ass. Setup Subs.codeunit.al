codeunit 50010 "Automotive Ass. Setup Subs"
{
    local procedure UpdateSetupStatus()
    var
        AutomotiveSetup: Record "Automotive Setup";
        GuidedExperience: Codeunit "Guided Experience";
    begin
        AutomotiveSetup.InsertIfNotExists();
        if AutomotiveSetup."No. Series" <> '' then
            GuidedExperience.CompleteAssistedSetup(ObjectType::Page, PAge::AutomotiveAssistedSetup);
    end;

    local procedure GetMyAppId(): Guid
    var
        ModInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(ModInfo);
        exit(ModInfo.Id());
    end;

    //Find Event --> OnRegisterAssistedSetup
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", OnRegisterAssistedSetup, '', false, false)]
    local procedure "Guided Experience_OnRegisterAssistedSetup"()
    var
        GuidedExperience: Codeunit "Guided Experience";
    begin
        GuidedExperience.InsertAssistedSetup('Automotive Setup',
            'Automotive Setup',
            'Allow you to setup Automotive',
            2,
            ObjectType::Page,
            Page::AutomotiveAssistedSetup,
            "Assisted Setup Group"::Extensions,
            '',
            "Video Category"::Uncategorized,
            '');

        UpdateSetupStatus();
    end;

    //Find Event --> OnReRunOfCompletedAssistedSetup
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", OnReRunOfCompletedAssistedSetup, '', false, false)]
    local procedure "Guided Experience_OnReRunOfCompletedAssistedSetup"(ExtensionID: Guid; ObjectType: ObjectType; ObjectID: Integer; var Handled: Boolean)
    begin
        if ExtensionID <> GetMyAppId() then
            exit;

        if (ObjectType <> ObjectType::Page) or (ObjectID <> Page::AutomotiveAssistedSetup) then
            exit;

        Handled := true;
        if (Confirm('It seems its already done, would you like to return to setup?', true)) then
            page.RunModal(PAge::AutomotiveAssistedSetup)
    end;

    //Find event --> OnAfterRunAssistedSetup
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", OnAfterRunAssistedSetup, '', false, false)]
    local procedure "Guided Experience_OnAfterRunAssistedSetup"(ExtensionID: Guid; ObjectType: ObjectType; ObjectID: Integer)
    var
        AutomotiveSetup: Record "Automotive Setup";
    begin
        if ExtensionID <> GetMyAppId() then
            exit;

        if (ObjectType <> ObjectType::Page) or (ObjectID <> Page::AutomotiveAssistedSetup) then
            exit;

        AutomotiveSetup.InsertIfNotExists();
        if AutomotiveSetup."No. Series" <> '' then begin
            UpdateSetupStatus();
            Message('Congrat, You´ve completed the setup');
        end;
    end;
}

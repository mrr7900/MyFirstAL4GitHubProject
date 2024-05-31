pagecustomization CustomerCustomization customizes "Customer List"
{
    layout
    {
        modify("Name 2")
        {
            visible = true;
        }

        modify("Search Name")
        {
            visible = true;
        }
        // Add changes to page layout here
    }

    views
    {
        addfirst
        {
            view(BalanceDue)
            {
                Caption = 'Balance Due';
                Filters = where("Balance Due" = filter(> 0));
                SharedLayout = false;
            }
        }
    }

    //Variables, procedures and triggers are not allowed on Page Customizations
}
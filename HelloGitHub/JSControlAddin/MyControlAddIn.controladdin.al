controladdin MyControlAddIn
{
    //Windows controls insid ethe page
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts =
        'https://code.jquery.com/jquery-3.2.2.min.js';
    //'script2.js';
    //StyleSheets =
    //    'style.css';
    StartupScript = './JSControlAddin/ControlAddin.js';
    // RecreateScript = 'recreateScript.js'; 
    // RefreshScript = 'refreshScript.js';
    // Images =   //Resources available for the implementation
    //     'image1.png',
    //     'image2.png';

    event JSInitialize(MyText: Text; MyNumber: Integer)

    procedure InitializeJS()
}
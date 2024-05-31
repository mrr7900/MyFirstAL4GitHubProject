codeunit 50004 "Car Factory Impl."
{
    Access = Internal;

    procedure InsertGasolineCar(No: Code[20]; Description: Text[100]; Manufacturer: code[20]; Model: code[20]; Year: Integer)
    var
        Automotive: Record Automotive;
    begin
        Automotive.Init();
        Automotive.Validate("No.", No);
        Automotive.Validate(Description, Description);
        Automotive.Validate(Manufacturer, Manufacturer);
        Automotive.Validate(Model, Model);
        Automotive.Validate(Year, Year);
        Automotive.Validate(FuelType, FuelType::Gasoline);
        Automotive.Insert()
    end;
}
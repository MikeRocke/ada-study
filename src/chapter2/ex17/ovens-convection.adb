with Ada.Text_IO;  use Ada.Text_IO;
package body Ovens.Convection is

   function Create (Fuel : in Fuel_Type) return Convection_Oven is
      Oven : Convection_Oven;
   begin
      Oven.On   := False;
      Oven.Fuel := Fuel;
      return Oven;
   end Create;

   procedure Turn_On (Oven : in out Convection_Oven) is
   begin
      Oven.On := True;
      Put (Fuel_Type'Image (Oven.Fuel));
      Put_Line (" convection oven turned on");
   end Turn_On;

   procedure Turn_Off (Oven : in out Convection_Oven) is
   begin
      Oven.On := False;
      Put (Fuel_Type'Image (Oven.Fuel));
      Put_Line (" convection oven turned off");
   end Turn_Off;

   procedure Set_Temperature (Oven : in out Convection_Oven;
                              To   : in     Degrees) is
   begin
      Oven.Set_Point := To;
      Put (Fuel_Type'Image (Oven.Fuel));
      Put_Line (" convection oven set to" & Degrees'Image (To));
   end Set_Temperature;

end Ovens.Convection;

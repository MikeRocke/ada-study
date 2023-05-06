with Ada.Text_IO;  use Ada.Text_IO;
package body Ovens.Conveyor is

   function Create (Fuel : in Fuel_Type) return Conveyor_Oven is
      Oven : Conveyor_Oven;
   begin
      Oven.On   := False;
      Oven.Fuel := Fuel;
      return Oven;
   end Create;

   procedure Turn_On (Oven : in out Conveyor_Oven) is
   begin
      Oven.On := True;
      Put (Fuel_Type'Image (Oven.Fuel));
      Put_Line (" conveyor oven turned on");
   end Turn_On;

   procedure Turn_Off (Oven : in out Conveyor_Oven) is
   begin
      Oven.On := False;
      Put (Fuel_Type'Image (Oven.Fuel));
      Put_Line (" conveyor oven turned off");
   end Turn_Off;

   procedure Set_Temperature (Oven : in out Conveyor_Oven;
                              To   : in     Degrees) is
   begin
      Oven.Set_Point := To;
      Put (Fuel_Type'Image (Oven.Fuel));
      Put_Line (" conveyor oven set to" & Degrees'Image (To));
   end Set_Temperature;

   procedure Set_Speed (Oven : in out Conveyor_Oven;
                        To   : in     Minutes) is
   begin
      Oven.Speed := To;
      Put (Fuel_Type'Image (Oven.Fuel));
      Put_Line (" conveyor oven speed set to" & Minutes'Image (To));
   end Set_Speed;

end Ovens.Conveyor;

with Ada.Text_IO;  use Ada.Text_IO;
package body Ovens.Microwave is

   function Create (Fuel : in Fuel_Type) return Microwave_Oven is
      Oven : Microwave_Oven;
   begin
      if Fuel /= Electric then
         raise Constraint_Error;
      end if;
      Oven.On   := False;
      Oven.Fuel := Electric;
      return Oven;
   end Create;

   procedure Turn_On (Oven : in out Microwave_Oven) is
   begin
      Oven.On := True;
      Put_Line ("Microwave oven turned on");
   end Turn_On;

   procedure Turn_Off (Oven : in out Microwave_Oven) is
   begin
      Oven.On := False;
      Put_Line ("Microwave oven turned off");
   end Turn_Off;

   procedure Set_Power (Oven : in out Microwave_Oven;
                        To   : in     Power_Level) is
   begin
      Oven.Power := To;
      Put_Line (" Microwave oven set to" & Power_Level'Image (To));
   end Set_Power;

end Ovens.Microwave;

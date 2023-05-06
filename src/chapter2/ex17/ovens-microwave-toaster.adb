with Ada.Text_IO; use Ada.Text_IO;

package body Ovens.Microwave.Toaster is


   procedure Turn_On_Element (Oven : in out Microwave_Toaster) is
   begin
      Oven.HeatingElement := True;
      Put_Line("Toaster element on");
   end Turn_On_Element;

   procedure Turn_Off_Element (Oven : in out Microwave_Toaster) is
   begin
      Oven.HeatingElement := False;
   end Turn_Off_Element;

   function Create (Fuel : in Fuel_Type) return Microwave_Toaster is
      Oven : Microwave_Toaster;
   begin
      if Fuel /= Electric then
         raise Constraint_Error;
      end if;
      Oven.On   := False;
      Oven.Fuel := Electric;
      Oven.HeatingElement := False;
      return Oven;
   end Create;


end Ovens.Microwave.Toaster;

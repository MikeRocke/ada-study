with Ovens;            use Ovens;
with Ovens.Convection; use Ovens.Convection;
with Ovens.Conveyor;   use Ovens.Conveyor;
with Ovens.Microwave;  use Ovens.Microwave;
with Ovens.Microwave.Toaster; use Ovens.Microwave.Toaster;

with Ada.Text_IO;      use Ada.Text_IO;
with Fuel_IO;
procedure Ovens_Demo is

   Main_Oven  : Convection_Oven := Create (Electric);
   Pizza_Oven : Conveyor_Oven   := Create (Natural_Gas);
   Quick_Oven : Microwave_Oven  := Create (Electric);
   My_Oven : Microwave_Toaster := Create(Electric);

   Portable_Oven : Oven_Ptr;  -- A pointer to any oven type

   The_Fuel : Fuel_Type;

   type Oven_Array is array (1 .. 6) of Oven_Ptr;
   Oven_List : Oven_Array;

begin
   Main_Oven := Create (Propane); -- Replace the main oven

   -- Function call syntax
   The_Fuel := Fueled_By (Oven => Main_Oven);
   -- Object dot method syntax
   The_Fuel := Main_Oven.Fueled_By;

   Fuel_IO.Put (The_Fuel);
   New_Line (2);

   -- Create a new oven
   Portable_Oven := new Microwave_Oven'(Create (Electric));

   -- Function call syntax
   The_Fuel := Fueled_By (Oven => Portable_Oven.all);
   -- Object dot method syntax
   The_Fuel := Portable_Oven.all.Fueled_By;

   Fuel_IO.Put (The_Fuel);
   New_Line (2);


   Oven_List (1) := new Convection_Oven'(Create (Natural_Gas));
   Oven_List (2) := new Convection_Oven'(Create (Electric));
   Oven_List (3) := new Microwave_Oven'(Create (Electric));
   Oven_List (4) := new Conveyor_Oven'(Create (Electric));
   Oven_List (5) := new Conveyor_Oven'(Create (Propane));
   Oven_List (6) := new Microwave_Toaster'(Create (Electric));

   Turn_On_Element(My_Oven);

   for Index in Oven_List'Range loop
       -- Procedure call syntax
      Ovens.Turn_On (Oven => Oven_List (Index).all);
   end loop;
   New_Line;

   for Index in reverse Oven_List'Range loop
      -- Object dot method syntax
      Oven_List (Index).all.Turn_Off;
   end loop;

end Ovens_Demo;

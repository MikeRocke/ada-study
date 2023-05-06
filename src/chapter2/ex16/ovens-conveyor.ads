package Ovens.Conveyor is

   type Degrees is range 200 .. 500;
   type Minutes is range 1 .. 10;
   
   type Conveyor_Oven is new Oven_Type with private;
   
   overriding function Create(Fuel : in Fuel_Type) return Conveyor_Oven;
   overriding procedure Turn_On(Oven : in out Conveyor_Oven);
   overriding procedure Turn_Off(Oven : in out Conveyor_Oven);
   
   procedure Set_Temperature(Oven : in out Conveyor_Oven; 
                             To : in Degrees);
   
   procedure Set_Speed(Oven: in out Conveyor_Oven;
                       To : in Minutes);
   
private
   type Conveyor_Oven is new Oven_Type with
      record
         Set_Point : Degrees;
         Speed : Minutes;
      end record;
   
   

end Ovens.Conveyor;

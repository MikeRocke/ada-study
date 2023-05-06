package Ovens.Convection is

   type Degrees is range 200 .. 500;
   
   type Convection_Oven is new Oven_Type with private;
   overriding function Create(Fuel : in Fuel_Type) return Convection_Oven;
   overriding procedure Turn_On(Oven : in out Convection_Oven);
   overriding procedure Turn_Off(Oven : in out Convection_Oven);
   
   procedure Set_Temperature(Oven: in out Convection_Oven;
                             To: in Degrees);
   
private
   type Convection_Oven is new Oven_Type with
      record 
         Set_Point : Degrees;
      end record;
   

end Ovens.Convection;

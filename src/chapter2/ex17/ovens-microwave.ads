package Ovens.Microwave is

   type Power_Level is range 1 .. 10;

   type Microwave_Oven is new Oven_Type with private;

   overriding function  Create (Fuel : in Fuel_Type) return  Microwave_Oven;
   -- raises Constraint_Error when Fuel is not Electric
   overriding procedure Turn_On  (Oven : in out Microwave_Oven);
   overriding procedure Turn_Off (Oven : in out Microwave_Oven);

   procedure Set_Power (Oven : in out Microwave_Oven;
                        To   : in     Power_Level);

private
   type Microwave_Oven is new Oven_Type with
      record
         Power : Power_Level;
      end record;
end Ovens.Microwave;

package Ovens is

   type Oven_Type is abstract tagged private;
   type Oven_Ptr is access Oven_Type'Class;
   
   type Fuel_Type is (Electric, Natural_Gas, Propane);
   
   function Create (Fuel : in Fuel_Type) return Oven_Type is abstract;
   
   procedure Turn_On(Oven : in out Oven_Type) is abstract;
   procedure Turn_Off(Oven : in out Oven_Type) is abstract;
   function Fueled_By(Oven : in Oven_Type) return Fuel_Type;
   
private
   type Oven_Type is abstract tagged
      record
         On : Boolean := False;
         Fuel : Fuel_Type;
      end record;
   
end Ovens;

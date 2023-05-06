package body Ovens is
   function Fueled_By (Oven : in Oven_Type) return Fuel_Type is
   begin
      return Oven.Fuel;
   end Fueled_By;
end Ovens;

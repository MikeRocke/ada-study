package Ovens.Microwave.Toaster is

   
   type Microwave_Toaster is new Microwave_Oven with private;
   
   overriding function  Create (Fuel : in Fuel_Type) return  Microwave_Toaster;
   procedure Turn_On_Element(Oven : in out Microwave_Toaster);
   procedure Turn_Off_Element(Oven : in out Microwave_Toaster);

private 
   type Microwave_Toaster is new Microwave_Oven with
      record
         HeatingElement: Boolean;
      end record;
   

end Ovens.Microwave.Toaster;

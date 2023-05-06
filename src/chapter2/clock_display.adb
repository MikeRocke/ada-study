pragma Ada_2012;
package body Clock_Display is

   ------------------
   -- Display_Days --
   ------------------

   procedure Display_Days (Days : in Day_Type) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Display_Days unimplemented");
      raise Program_Error with "Unimplemented procedure Display_Days";
   end Display_Days;

end Clock_Display;

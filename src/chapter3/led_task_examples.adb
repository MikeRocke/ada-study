with Ada.Text_IO;  use Ada.Text_IO;
procedure LED_Task_Examples is

   type Color_Type is (Red, Green, Yellow, Blue);

   procedure Turn_On_LED (Color : in Color_Type) is
   begin
      Put_Line (Color_Type'Image (Color) & " on");
   end Turn_On_LED;

   procedure Turn_Off_LED (Color : in Color_Type) is
   begin
      Put_Line (Color_Type'Image (Color) & " off");
   end Turn_Off_LED;

   --------------------------------------------------------
   task Flash_Red_LED;        -- Declare a singleton task

   task body Flash_Red_LED is -- Body of the task
   begin
      loop
         Turn_On_LED (Red);
         delay 0.5;
         Turn_Off_LED (Red);
         delay 0.5;
      end loop;
   end Flash_Red_LED;
   --------------------------------------------------------
   type Duration_Acc is access Duration;
   task type Flash_LED (Color  : Color_Type; -- A task type
                        Period : Duration_Acc);
   task body Flash_LED is               -- Body of the task
   begin
      loop
         Turn_On_LED (Color);
         delay Period.all / 2;
         Turn_Off_LED (Color);
         delay Period.all / 2;
      end loop;
   end Flash_LED;
   --------------------------------------------------------
   -- Two task objects (variables)
   Yellow_Duration : Duration_Acc := new Duration' (4.0);
   Yellow_LED : Flash_LED (Color  => Yellow,
                           Period => Yellow_Duration);
   Green_LED  : Flash_LED (Color  => Green,
                           Period => new Duration' (3.0));
   -- A pointer to a task object
   type Flash_Ptr is access Flash_LED;
   Blue_LED : Flash_Ptr;

begin
   Put_Line ("Flashing LEDs");
   Blue_LED := new Flash_LED (Color  => Blue,
                              Period => new Duration'(8.0));
   Put_Line ("Main task is done");
end LED_Task_Examples;

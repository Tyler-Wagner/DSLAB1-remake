pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__productdistributionmain.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__productdistributionmain.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__soft_links__initialize_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "ada__io_exceptions_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "ada__numerics_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "ada__strings_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "interfaces__c_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "system__os_lib_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__tags_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "ada__streams_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "system__file_control_block_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__finalization_root_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "ada__finalization_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "system__file_io_E");
   E107 : Short_Integer; pragma Import (Ada, E107, "ada__calendar_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__calendar__delays_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "ada__real_time_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "ada__text_io_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "ada__strings__maps_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "ada__strings__maps__constants_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "system__random_seed_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "system__tasking__initialization_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "system__tasking__protected_objects_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "system__tasking__protected_objects__entries_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__tasking__queuing_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "system__tasking__stages_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "circularque_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "food_datastructures_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "stats_fooddistribution_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "gatekeeperservice_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "distribution_service_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "food_salesservice_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E208 := E208 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F1;
      end;
      E065 := E065 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__text_io__finalize_spec");
      begin
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__file_io__finalize_body");
      begin
         E073 := E073 - 1;
         F3;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, True, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, False, True, True, False, False, 
           True, False, False, True, True, True, True, False, 
           False, False, False, False, True, True, False, True, 
           True, False, True, True, True, True, False, False, 
           False, False, False, True, False, False, True, False, 
           False, False, False, True, False, True, False, True, 
           True, False, False, True, False, False, False, False, 
           False, True, False, True, False, True, True, True, 
           False, False, True, False, True, True, True, False, 
           True, True, False, True, True, True, True, False, 
           False, True, False, False, False, False, True, True, 
           True, False, False, False),
         Count => (0, 0, 0, 0, 2, 2, 2, 0, 0, 0),
         Unknown => (False, False, False, False, False, False, True, False, False, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E023 := E023 + 1;
      System.Exceptions'Elab_Spec;
      E025 := E025 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E019 := E019 + 1;
      E011 := E011 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E068 := E068 + 1;
      Ada.Numerics'Elab_Spec;
      E133 := E133 + 1;
      Ada.Strings'Elab_Spec;
      E148 := E148 + 1;
      Interfaces.C'Elab_Spec;
      E109 := E109 + 1;
      System.Os_Lib'Elab_Body;
      E078 := E078 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E052 := E052 + 1;
      Ada.Streams'Elab_Spec;
      E067 := E067 + 1;
      System.File_Control_Block'Elab_Spec;
      E081 := E081 + 1;
      System.Finalization_Root'Elab_Spec;
      E076 := E076 + 1;
      Ada.Finalization'Elab_Spec;
      E074 := E074 + 1;
      System.File_Io'Elab_Body;
      E073 := E073 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E107 := E107 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E105 := E105 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E218 := E218 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E065 := E065 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E150 := E150 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E153 := E153 + 1;
      System.Random_Seed'Elab_Body;
      E139 := E139 + 1;
      System.Tasking.Initialization'Elab_Body;
      E198 := E198 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E206 := E206 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E208 := E208 + 1;
      System.Tasking.Queuing'Elab_Body;
      E212 := E212 + 1;
      System.Tasking.Stages'Elab_Body;
      E216 := E216 + 1;
      E161 := E161 + 1;
      Food_Datastructures'Elab_Body;
      E141 := E141 + 1;
      Stats_Fooddistribution'Elab_Spec;
      E220 := E220 + 1;
      Gatekeeperservice'Elab_Spec;
      Gatekeeperservice'Elab_Body;
      E159 := E159 + 1;
      Distribution_Service'Elab_Body;
      E103 := E103 + 1;
      Food_Salesservice'Elab_Body;
      E222 := E222 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_productdistributionmain");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/circularque.o
   --   /Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/food_datastructures.o
   --   /Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/stats_fooddistribution.o
   --   /Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/gatekeeperservice.o
   --   /Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/distribution_service.o
   --   /Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/food_salesservice.o
   --   /Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/productdistributionmain.o
   --   -L/Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/
   --   -L/Users/tylerwagner/Desktop/ATC/ADA/DSLAB1/obj/
   --   -L/users/tylerwagner/opt/gnat/2019/lib/gcc/x86_64-apple-darwin17.7.0/8.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;

CDF      
   '   
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      
num_df_ss1        num_side_ss2      
num_df_ss2        num_side_ss3      
num_df_ss3        num_side_ss4      
num_df_ss4        num_side_ss5      
num_df_ss5        num_side_ss6      
num_df_ss6        num_side_ss7      
num_df_ss7        num_side_ss8      
num_df_ss8        num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_ns5       num_nod_ns6       num_nod_ns7       num_nod_ns8       num_nod_var       num_info   �         api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         out.e      maximum_name_length                 3   
time_whole                            A�   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                     �   ns_prop1      	         name      ID               �   	ss_status         
                     �   ss_prop1      
         name      ID               �   coordx                      �         coordy                      �      �   coordz                      �      �   eb_names                       $      `   ns_names      	                      �   ss_names      
                      �   
coor_names                         d      �   connect1                  	elem_type         QUAD4         �      �   elem_num_map                    4      �   elem_ss1                          �   side_ss1                             dist_fact_ss1                                 elem_ss2                          4   side_ss2                          @   dist_fact_ss2                              L   elem_ss3                          l   side_ss3                          x   dist_fact_ss3                              �   elem_ss4                          �   side_ss4                          �   dist_fact_ss4                              �   elem_ss5                          �   side_ss5                          �   dist_fact_ss5                              �   elem_ss6                             side_ss6                             dist_fact_ss6                                 elem_ss7                          <   side_ss7                          D   dist_fact_ss7                              L   elem_ss8                          l   side_ss8                          t   dist_fact_ss8                              |   node_ns1                          �   node_ns2                          �   node_ns3                          �   node_ns4                           �   node_ns5      !                    �   node_ns6      "                    �   node_ns7      #                    �   node_ns8      $                        vals_nod_var1                          �      A�   name_nod_var      %                 $         info_records      &                +�      0                                                                                                              ?�UUUUUU?�UUUUUV        ?�UUUUUU?�UUUUUV?�      ?�      ?�UUUUUU        ?�UUUUUU?�      ?�UUUUUV        ?�UUUUUV?�      ?�333333?�333333?�333334?�333333?񙙙���?񙙙���?�333334?�333333?񙙙���                ?�UUUUUV?�UUUUUV        ?�UUUUUV        ?�UUUUUU?�UUUUUV?�UUUUUV?�UUUUUV?�UUUUUU?�      ?�      ?�      ?�                      ?�      ?�              ?�      ?�      ?�      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   	   
            	               
   	         	                                                                                                	   
                                                                                                                      	                                                  	                                            
                                            
                                                                                                                                          
                                                                           u                                   ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               tied_value_constraint_test.i                                                                                                                                      ### Input File ###                                                                                                                                                                                                                                 [Mesh]                                                                             second_order                   = 0                                               uniform_refine                 = 0                                               file                           = constraint_test.e                               nemesis                        = 0                                               patch_size                     = 40                                              skip_partitioning              = 0                                             []                                                                                                                                                                [Variables]                                                                        [./u]                                                                              family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                               [../]                                                                          []                                                                                                                                                                [Kernels]                                                                          [./diff]                                                                           type                         = Diffusion                                         execute_on                   = residual                                          start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = u                                               [../]                                                                          []                                                                                                                                                                [BCs]                                                                              [./left]                                                                           type                         = DirichletBC                                       boundary                     = 1                                                 execute_on                   = residual                                          value                        = 0                                                 variable                     = u                                               [../]                                                                                                                                                             [./right]                                                                          type                         = DirichletBC                                       boundary                     = 4                                                 execute_on                   = residual                                          value                        = 1                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Materials]                                                                        [./empty]                                                                          type                         = EmptyMaterial                                     block                        = 1                                                 execute_on                   = residual                                        [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      l_abs_step_tol                 = -1                                              l_max_its                      = 100                                             l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = -snes                                           scheme                         = backward-euler                                  type                           = Steady                                          execute_on                     = residual                                      []                                                                                                                                                                [Output]                                                                           exodus                         = 1                                               file_base                      = out                                             gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    nemesis                        = 0                                               output_displaced               = 0                                               output_initial                 = 1                                               perf_log                       = 1                                               postprocessor_csv              = 0                                               postprocessor_ensight          = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               xda                            = 0                                             []                                                                                                                                                                [setup_quadrature]                                                                 order                          = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [setup_dampers]                                                                  []                                                                                                                                                                [no_action]                                                                      []                                                                                                                                                                [init_problem]                                                                   []                                                                                                                                                                [copy_nodal_vars]                                                                  initial_from_file_timestep     = 2                                             []                                                                                                                                                                [check_integrity]                                                                []                                                                                                                                                                [Constraints]                                                                      [./value]                                                                          type                         = TiedValueConstraint                               execute_on                   = residual                                          master                       = 3                                                 order                        = FIRST                                             slave                        = 2                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [no_action]                                                                                                                                                                                                                                                                                        ?�              ?�߃�lF?�_���        ?�ܶ�zBe?�y1�.²?�`Y>({?�U�F�?�_�|�        ?�y1�.��?�U�Fٲ?�߃�c�        ?�ܶ�z�?�`Y>(?�`Y>(|?��.~N:?�!�m���?��F��>�?�      ?�      ?��.~Y�?�`Y>(?�      
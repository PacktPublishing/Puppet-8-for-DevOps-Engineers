plan packtproject::facter_run_plan( 

  TargetSpec $nodes, 

  String $fact_name 

) { 

  run_command("facter $fact_name", $nodes)
} 

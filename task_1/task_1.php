<?php 
 
function fibonacci($q) { 
 $s = 0; 
 $n = 1; 
 for ($i = 1; $i < $q+1; $i++) { 
 if ($i % 5 != true ) { 
 echo "<br><br>"; 
 } 
 echo "number($i)" . " = $s, "; 
 $n = $s + ($s = $n); 
 } 
} 
fibonacci(64); 
 
?>
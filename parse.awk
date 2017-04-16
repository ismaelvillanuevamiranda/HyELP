function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }

BEGIN{
	#print anio " " mes " " dia
}
{

$2 = trim($2)
if($2 >= 3){
	print $1 "," $2 ""
}



	
# 		if($1 == anio && $2 == mes && $3 == dia){
# 				#if($12 > 0 && $12 <= 409){
# 				if($12 > 0){
# 						
# 						suma = suma + $12;
# 						n = n + 1;
# 				}				
# 		}
	
}
END{
	#print anio"/"mes"/"dia " " suma/n
	#print anio " " mes " " temperatura/n " " temperaturaMin "  " temperaturaMax "  " humedad/n "  " humedadMin "  " humedadMax "  " viento/n "  " vientoMin "  " vientoMax "  " vientoDireccion/n "  " presion/n "  " presionMin "  " presionMax "  " lluvia
}
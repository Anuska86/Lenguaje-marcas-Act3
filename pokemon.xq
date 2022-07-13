(:Muestra todos los pokemons que tienen una fuerza mayor a 100 y muestra el nombre y el tipo.:)

(:
for $x in doc("pokemoncopia.xml")/pokemons/pokemon
where $x/fuerza>100
return (
  <li>{$x/nombre}</li>,<li>{$x/tipo}</li>
)
:)

(:Muestra todos los pokemons de tipo fuego con todos sus datos, en una tabla HTML.:)
(:
<html>
<body>
<h1>Pokemons</h1>
<table border="1">
<tr>
<th>Nombre</th>
<th>Código</th>
<th>Color</th>
<th>Fuerza</th>
<th>Comentario</th>
<th>Foto</th>
</tr>
{
  for $x in doc("pokemoncopia.xml")/pokemons/pokemon
  return if ($x/tipo="Fuego")
  then (
   <tr>
  <td>{$x/nombre}</td>
  <td>{$x/codigo}</td>
  <td>{$x/color}</td>
  <td>{$x/fuerza}</td>
  <td>{$x/comentario}</td>
  <td><img src="{$x/foto}" height="100"></img></td>
  </tr> 
)
}
</table>
</body>
</html>

:)




(:Realizar una inserción de un nuevo pokemon.:)
(:
insert node <pokemon id="PK-0007">
<nombre>Abra</nombre>
<codigo>PK-0007</codigo>
<foto><img src="img/Abra-png"/></foto>
<color>amarillo</color>
<tipo>psiquico</tipo>
<fuerza>48</fuerza>
<comentario>Sus poderes dependen del tipo de sueños que tenga</comentario>
</pokemon>
as last into doc("pokemoncopia.xml")/pokemons :)

(:Modifica la fuerza de un pokemon.:)
(:
replace value of node
doc("pokemoncopia.xml")/pokemons/pokemon[2]/fuerza with "98" :)

(:Elimina un pokemon del XML.:)

delete node
doc("pokemoncopia.xml")/pokemons/pokemon[7]





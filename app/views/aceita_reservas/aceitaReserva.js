function replaceReservas (innerHTML) {
  const reservas = document.getElementById('pesquisa');
  reservas.innerHTML = innerHTML;
}
function myFunction () {
  console.log("funfei")
  replaceReservas("<%= j render 'reserva', reservas: @reservas %>")
}
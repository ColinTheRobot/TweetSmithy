window.onload = function() {
  console.log('loaded bro');
  var appRouter = new AppRouter();
  var mapView = new MapView();
  Backbone.history.start();
}

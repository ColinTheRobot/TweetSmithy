var Words = Backbone.Collection.extend({
  model: Word,
  url: '/search'
});

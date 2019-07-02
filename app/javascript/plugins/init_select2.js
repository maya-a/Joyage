
//   document.addEventListener('DOMContentLoaded', () => {
//   var client = algoliasearch('6WKL3F66N2', '66e80879e16a45e9f05ccf20c9bbc9ee');
//   var index = client.initIndex('Origin');
//   index.search('.js-example-basic-single', { hitsPerPage: 10, page: 0 })
//     .then(function searchDone(content) {
//       console.log(content)
//     })
//     .catch(function searchFailure(err) {
//       console.error(err);
//     });
//       })
// $(document).ready(function() {
//   $(".js-example-data-array-selected").select2({
//     data: index
//   })
// });


// import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2(); // (~ document.querySelectorAll)
};

export { initSelect2 };


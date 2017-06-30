//
// ${'#saveCategoryBtn'}.click(function () {
//
//     console.log('log')
//
//     var category = {
//         name: $('#categoryName').val(),
//         description: $('#categoryDescription').val(),
//         availability: $('#avaible').val(),
//         numberOfProducts: $('#numberOfProducts').val(),
//         numberInHierarchy: $('#numberInHierarchy').val(),
//         pathToImage: $('#image').val()
//     };
//     $.ajax({
//         url: '/category?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
//         method: 'POST',
//         contentType: 'application/json; charset=UTF-8',
//         dataType: 'json',
//         data: JSON.stringify(country),
//         success: function (res) {
//             console.log(res);
//         }
//     })
// });
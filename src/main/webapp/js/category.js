$('#saveCategoryBtn').click(function () {

    if ($('#categoryName').val() ==''  || $('#categoryDescription').val() == '' || $('#avaible').val() == ''
        || $('#numberOfProducts').val() == '' || $('#numberInHierarchy').val() == '') {
        var span = document.createElement('span');
        span.style.color = 'red';
        span.innerHTML = 'input all fields';
        document.getElementById('categoryName').appendChild(span);
    } else {
        var category = {
            name: $('#categoryName').val(),
            description: $('#categoryDescription').val(),
            availability: $('#avaible').val(),
            numberOfProducts: $('#numberOfProducts').val(),
            numberInHierarchy: $('#numberInHierarchy').val()
        };
        var image = {
            pathToImage: $('#image').val()
        };

        $('#categoryName').val('');
        $('#categoryDescription').val('');
        $('#avaible').val('');
        $('#numberOfProducts').val('');
        $('#numberInHierarchy').val('');

        $.ajax({
            url: '/saveCategory?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
            method: 'POST',
            contentType: 'application/json; charset=UTF-8',
            dataType: 'json',
            data: JSON.stringify(category, image),
            success: function (res) {
                showData(res);
            }
        });
    }
});

load();

function load() {

    $.ajax({
        url: '/loadCategories?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'GET',
        success: function (res) {
            showData(res);
        }
    });
}

function deleteCategory(idCategory) {
    $.ajax({
        url: '/deleteCategory?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'DELETE',
        data: JSON.stringify(idCategory),
        success: function (res) {
            showData(res);
        }
    });
}

function showData(res) {
    var fromDB = '';
    for (var i in res) {
//                    fromDB += '<tr><td>'+res[i].name+'</td><tr>';
        fromDB += '<div class="col-sm-6 col-md-4">' +
            '<div class="thumbnail">' +
            '<img src="' + res[i].pathToImage + '" alt="" width="200" height="200">' +
            '<div class="caption">' + '<h3>' + res[i].name + '</h3>'
            + '<p>' + res[i].description + '</p>' +
            '<p><button class="btn btn-danger" id="deleteCategoryBtn" ' +
            'onclick="deleteCategory(' + res[i].id + ')" role="button">Delete</button></p>' +
            '<a href="/updateCategory/' + res[i].id + '" class="btn btn-default" id="updateCategoryBtn" ' +
            'role="button">Update</a>' +
            '</p></div></div></div>';
    }
    $('#result').html(fromDB);
}
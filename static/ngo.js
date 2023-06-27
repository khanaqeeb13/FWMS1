$(document).on('submit', '#todo-form', function (e) {
    console.log('hello');
    e.preventDefault();
    $.ajax({
        type: 'POST',
        url: '/ngo/<usr>',
        data: {
            food: $("#food").val(),
            naam: $("#naam").val(),
            resuser: $("#ngo_cnf").val()
        },
        success: function () {
            alert('Saved');
        }
    })
});
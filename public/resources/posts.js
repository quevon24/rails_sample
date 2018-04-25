
app.Posts = function() {
    console.log('app.Posts');
    this._input = $('#posts-search-txt');
    this._initAutocomplete();
};

app.Posts.prototype = {
    _initAutocomplete: function() {
        this._input
            .autocomplete({
                source: '/posts/json_search',
                appendTo: '#posts-search-results',
                select: $.proxy(this._select, this)
            })
            .autocomplete('instance')._renderItem = $.proxy(this._render, this);
    },

    _render: function(ul, item) {
        console.log('item: ', item);
        var markup = [
            '<span class="title">' + item.title + '</span>',
            '<span class="category">' + item.category + '</span>'
        ];
        return $('<li>')
            .append(markup.join(''))
            .appendTo(ul);
    },

    _select: function(e, ui) {
        window.location = ui.item.url;
        // this._input.val(ui.item.title + ' - ' + ui.item.category);
        // return false;
    }
};

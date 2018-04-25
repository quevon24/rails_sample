var Posts = function () {
    console.log('here');
    this._input = $('#posts-search-txt');
    this._initAutocomplete();
};


Posts.prototype.Init = function () {
    this._input
        .autocomplete({
            source: '/posts/json_search',
            appendTo: '#posts-search-results',
            select: $.proxy(this._select, this)
        })
        .autocomplete('instance')._renderItem = $.proxy(this._render, this);

    _render = function (ul, item) {
        var markup = [
            '<span class="title">' + item.title + '</span>',
            '<span class="category">' + item.category + '</span>'
        ];
        return $('<li>')
            .append(markup.join(''))
            .appendTo(ul);
    };

    _select = function (e, ui) {
        window.location = ui.item.url;
        // this._input.val(ui.item.title + ' - ' + ui.item.category);
        // return false;
    };
};
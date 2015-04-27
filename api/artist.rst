Artist
======

Retrieve artist
---------------

.. http:get:: /artist/(string:artist_id)
    :noindex:
    :synopsis: Retrieve information about an artist

    **Example request**:

    .. sourcecode:: http

        GET /artist/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "id": 12345,
            "name": "Babar",
            "image": [
                "default": {
                    "large" : "http://example.com/image/artists/ab6d4b6287fc/default/large.png",
                    "medium" : "http://example.com/image/artists/ab6d4b6287fc/default/medium.png",
                    "small" : "http://example.com/image/artists/ab6d4b6287fc/default/small.png"
                },
                "others": [
                    {
                        "large" : "http://example.com/image/artists/ab6d4b6287fc/287fc/large.png",
                        "medium" : "http://example.com/image/artists/ab6d4b6287fc/287fc/medium.png",
                        "small" : "http://example.com/image/artists/ab6d4b6287fc/287fc/small.png"
                    },
                    {
                        "large" : "http://example.com/image/artists/ab6d4b6287fc/6287fc/large.png",
                        "medium" : "http://example.com/image/artists/ab6d4b6287fc/6287fc/medium.png",
                        "small" : "http://example.com/image/artists/ab6d4b6287fc/6287fc/small.png"
                    }
                ]
            ]
        }

    :query artist_id: artist id
    :statuscode 200: no error
    :statuscode 404: there's no artist


Update artist
-------------

.. http:post:: /artist/(string:artist_id)
    :noindex:
    :synopsis: Update information about an artist

    **Example request**:

    .. sourcecode:: http

        POST /artist/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "success": true
        }

    :query artist_id: artist id
    :statuscode 200: no error
    :statuscode 404: there's no artist

Add artist
----------

.. http:put:: /artist
    :noindex:
    :synopsis: Add an artist

    **Example request**:

    .. sourcecode:: http

        PUT /track/ HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

        {
            "success": true
            "id": 4b6287rf5
        }

    :statuscode 200: no error
    :statuscode 404: there's no artist

Remove artist
-------------

.. http:delete:: /artist/(string:artist_id)
    :noindex:
    :synopsis: Remove artist

    **Example request**:

    .. sourcecode:: http

        DELETE /artist/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "success": true
        }

    :query artist_id: artist id
    :statuscode 200: no error
    :statuscode 404: there's no artist
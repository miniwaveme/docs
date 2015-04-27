Album
=====

Retrieve Album
--------------

.. http:get:: /album/(string:album_id)
    :noindex:
    :synopsis: Retrieve information about an album

    **Example request**:

    .. sourcecode:: http

        GET /album/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        [
            {
                "id": 12345,
                "author_id": 123,
                "total_track": 12,
                "format": "ep",
                "release_year": "2014",
                "release_date": "2014-04-28",
                "source": "web",
                "label": "Domino",
                "cover": [
                "default": {
                    "sm": "http://example.com",
                    "md": "http://example.com",
                    "lg": "http://example.com"
                },
                "others": [
                    {
                        "sm": "http://example.com",
                        "md": "http://example.com",
                        "lg": "http://example.com"
                    }
                ],
                "artist": [
                    {
                        "id": "bcfe0dc6",
                        "name": "Various Artist"
                    }
                ],
                "track": [
                    {
                        "id": "ab6d4b6287fc",
                        "title": ""
                        "track_number": 1
                        "duration": 360
                        "artist": [
                            {
                                "id": "bcfe0dc6",
                                "name": ""
                            }
                        ]
                    }
                ]
            }
        ]

    :query album_id: album id
    :statuscode 200: no error
    :statuscode 404: there's no album

Add album
---------

.. http:put:: /album
    :noindex:
    :synopsis: Add an album

    **Example request**:

    .. sourcecode:: http

        PUT /album/ HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

        {
            "success": true
            "id": 4b6287rf5
        }

    :statuscode 200: no error


Remove album
------------

.. http:delete:: /album/(string:album_id)
    :noindex:
    :synopsis: Remove artist

    **Example request**:

    .. sourcecode:: http

        DELETE /album/ab6d4b6287fc HTTP/1.1
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

    :query album_id: album id
    :statuscode 200: no error
    :statuscode 404: there's no album

Update album
------------

.. http:post:: /album/(string:album_id)
    :noindex:
    :synopsis: Update information about an album

    **Example request**:

    .. sourcecode:: http

        POST /album/ab6d4b6287fc HTTP/1.1
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

    :query album_id: album id
    :statuscode 200: no error
    :statuscode 404: there's no album
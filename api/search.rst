Search
======

Search track
------------

.. http:get:: /search/track
    :noindex:
    :synopsis: Search track

    **Example request**:

    .. sourcecode:: http

        GET /search/track HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "result_count": 120,
            "total_page": 3,
            "page": 1,
            "result": [
                {
                    "type": "track",
                    "id": "",
                },
                {
                    "type": "track",
                    "id": "",
                },
                {
                    "type": "track",
                    "id": "",
                }
            ]
        }

    :statuscode 200: no error


Search album
------------

.. http:get:: /search/album
    :noindex:
    :synopsis: Search album

    **Example request**:

    .. sourcecode:: http

        GET /search/album HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "result_count": 120,
            "total_page": 3,
            "page": 1,
            "result": [
                {
                    "type": "album",
                    "id": "",
                },
                {
                    "type": "album",
                    "id": "",
                },
                {
                    "type": "album",
                    "id": "",
                }
            ]
        }

    :statuscode 200: no error

Search artist
-------------

.. http:get:: /search/artist
    :noindex:
    :synopsis: Search artist

    **Example request**:

    .. sourcecode:: http

        GET /search/artist HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "result_count": 120,
            "total_page": 3,
            "page": 1,
            "result": [
                {
                    "type": "artist",
                    "id": "",
                },
                {
                    "type": "artist",
                    "id": "",
                },
                {
                    "type": "artist",
                    "id": "",
                }
            ]
        }

    :statuscode 200: no error


Search in all
-------------

.. http:get:: /search/all
    :noindex:
    :synopsis: Search in all database

    **Example request**:

    .. sourcecode:: http

        GET /search/ HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "result_count": 120,
            "total_page": 3,
            "page": 1,
            "result": [
                {
                    "type": "album",
                    "id": "",
                },
                {
                    "type": "artist",
                    "id": "",
                },
                {
                    "type": "track",
                    "id": "",
                }
            ]
        }

    :statuscode 200: no error
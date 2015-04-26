Track
=====

Retrieve track
--------------

.. http:get:: /track/(string:track_id)
    :noindex:
    :synopsis: Retrieve information about a track

    **Example request**:

    .. sourcecode:: http

        GET /track/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

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
            ],
            "format": "mp3",
            "size": 360000,
            "bitrate": 320
            "quality": 440000,
            "original_format": "mp3",
            "original_size": 360000,
            "original_bitrate": 320
            "original_quality": 440000,
        }


    :query track_id: track id
    :statuscode 200: no error
    :statuscode 404: there's no track


Add track
---------

.. http:get:: /track
    :noindex:
    :synopsis: Retrieve information about a track

    **Example request**:

    .. sourcecode:: http

        PUT /track/ HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript


    :query track_id: track id
    :statuscode 200: no error
    :statuscode 404: there's no track


Remove track
------------

.. http:delete:: /track/(string:track_id)
    :noindex:
    :synopsis: Remove track

    **Example request**:

    .. sourcecode:: http

        DELETE /track/ab6d4b6287fc HTTP/1.1
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

    :query track_id: track id
    :statuscode 200: no error
    :statuscode 404: there's no track

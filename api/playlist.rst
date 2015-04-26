Playlist
========

Retrieve playlist
-----------------

.. http:get:: /playlist/(string:playlist_id)
    :noindex:
    :synopsis: Retrieve playlist

    **Example request**:

    .. sourcecode:: http

        GET /playlist/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "id": "ab6d4b6287fc",
            "title": "Playlist 1",
            "created": "2015-04-05",
            "updated": "2015-04-15",
            "track_count": 3,
            "tracks": [
                {
                    "id": "bcfe0dc6",
                    "title": "Track 1",
                    "artist": "Unknow artist",
                    "duration": "560",
                },
                {
                    "id": "bcfe0dc6",
                    "title": "Track 2",
                    "artist": "Unknow artist",
                    "duration": "650",
                },
                {
                    "id": "bcfe0dc6",
                    "title": "Track 3",
                    "artist": "Unknow artist",
                    "duration": "300",
                }
            ],
        }

    :query track_id: track id
    :statuscode 200: no error
    :statuscode 404: there's no track

Retrieve user playlist
----------------------

.. http:get:: /user/(string:user_id)/playlist
    :noindex:
    :synopsis: Retrieve user playlist

    **Example request**:

    .. sourcecode:: http

        GET /user//playlist/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        [
            {
                "id": "ab6d4b6287fc",
                "name": "Playlist 1",
                "track_count": 120,
            },
            {
                "id": "ab6d4b6287fc",
                "name": "Playlist 2",
                "track_count": 14,
            }
        }

    :query user_id: user id
    :statuscode 200: no error
    :statuscode 404: there's no playlist

Create user playlist
--------------------

.. http:post:: /user/(string:user_id)/playlist
    :noindex:
    :synopsis: Retrieve user playlist

    **Example request**:

    .. sourcecode:: http

        POST /user//playlist/ab6d4b6287fc HTTP/1.1
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

    :query user_id: user id
    :statuscode 200: no error
    :statuscode 404: User not found

Add track to user playlist
--------------------------

.. http:put:: /user/(string:user_id)/playlist/track/(string:track_id)
    :noindex:
    :synopsis: Add track to user playlist

    **Example request**:

    .. sourcecode:: http

        PUT /user/playlist/ab6d4b6287fc/4b6287rf5 HTTP/1.1
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

    :query user_id: user id
    :query track_id: track id
    :statuscode 200: no error
    :statuscode 404: User not found

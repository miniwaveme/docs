Favorite track
==============

Retrieve favorite user track
----------------------------

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
                "title": "Track 2",
                "track_count": 600,
            },
            {
                "id": "ab6d4b6287fc",
                "title": "Track 1",
                "duration": 410,
            }
        ]

    :query user_id: user id
    :statuscode 200: no error
    :statuscode 404: there's no favorite

Add track to user favorite
--------------------------

.. http:put:: /user/(string:user_id)/favorite/(string:track_id)
    :noindex:
    :synopsis: Add track to user playlist

    **Example request**:

    .. sourcecode:: http

        PUT /user/ab6d4b6287fc/favorite/4b6287rf5 HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "success": true
            "id": 4b6287rf5
        }

    :query user_id: user id
    :query track_id: track id
    :statuscode 200: no error
    :statuscode 404: User or track not found

Remove favorite
---------------

.. http:delete:: /user/(string:user_id)/favorite/(string:favorite_id)
    :noindex:
    :synopsis: Remove favorite

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

    :query user_id: user id
    :query favorite_id: favorite id
    :statuscode 200: no error
    :statuscode 404: there's no favorite or user
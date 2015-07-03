Recommendation
==============

Get recommendations for an user
-------------------------------

.. http:get:: /user/(string:user_id)/recommendation/list
    :noindex:
    :synopsis: Retrieve user recommendations

    **Example request**:

    .. sourcecode:: http

        GET /user/ab6d4b6287fc/recommendation/list HTTP/1.1
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
                "title": "Track 1"
                "duration": 360
                "album": "tttt"
                "artist": [
                    {
                        "id": "bcfe0dc6",
                        "name": "Unknown Artist"
                    }
                ]
            },
            {
                "id": "4b6287fcab6d",
                "title": "Track 2"
                "duration": 340
                "album": "FFFF"
                "artist": [
                    {
                        "id": "0dc6bcfe",
                        "name": "Unknown Artist 2"
                    }
                ]
            }
        ]

    :query user_id: user id
    :statuscode 200: no error
    :statuscode 404: there's no track

Webhook
=======

Get user webhooks
-----------------

.. http:get:: /user/(string:user_id)/webhook
    :noindex:
    :synopsis: Retrieve user webhook

    **Example request**:

    .. sourcecode:: http

        GET /user/ab6d4b6287fc/webhook HTTP/1.1
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
                "Name": "Webhook 1",
                "event": {
                    "name": "Track played",
                    "id": "d4b62ab687fc"
                },
                "url": "http://exemple.com/ttt",
                "type": "POST",
                "parameters": [
                    {
                        "name": "track",
                        "value": "played_track.name"
                    }
                ]
            },
            {
                "id": "d4b62ab687fc",
                "Name": "Webhook 2",
                "event": {
                    "name": "User connection",
                    "id": "d4b6fc2ab687"
                },
                "url": "http://exemple.com/user_logged",
                "type": "GET",
                "parameters": [
                    {
                        "name": "user",
                        "value": "user.name"
                    }
                ]
            }
        ]

    :query user_id: user id
    :statuscode 200: no error
    :statuscode 404: there's no favorite

Remove user webhooks
--------------------

.. http:delete:: /user/(string:user_id)/webhook/(string:webhook_id)
    :noindex:
    :synopsis: Remove user webhook

    **Example request**:

    .. sourcecode:: http

        DELETE /user/ab6d4b6287fc/webhook/6d4abbc HTTP/1.1
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
    :query webhook_id: webhook id
    :statuscode 200: no error
    :statuscode 404: there's no webhook

Add user webhooks
-----------------

.. http:post:: /user/(string:user_id)/webhook/(string:webhook_id)
    :noindex:
    :synopsis: Add user webhook

    **Example request**:

    .. sourcecode:: http

        POST /user/ab6d4b6287fc/webhook/6d4abbc HTTP/1.1
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
    :query webhook_id: webhook id
    :statuscode 200: no error
    :statuscode 404: there's no webhook
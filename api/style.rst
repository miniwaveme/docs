Style
=====

Get style
---------

.. http:get:: /style/(string:style_id)
    :noindex:
    :synopsis: Retrieve style

    **Example request**:

    .. sourcecode:: http

        GET style/ab6d4b6287fc HTTP/1.1
        Host: example.com
        Accept: application/json, text/javascript

    **Example response**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Vary: Accept
        Content-Type: text/javascript

        {
            "id": "ab6d4b6287fc",
            "name": "Electronic",
            "sub_style": [
                {
                    "id": "ab687d4b62fc",
                    "name": "Techno",
                    "sub_style": [
                        {
                            "id": "a4b62fb687dc",
                            "name": "Dub Techno"
                        }
                    ]
                },
                {
                    "id": "ab62fcb62fc",
                    "name": "House"
                }
            ]
        }

    :query style_id: style id
    :statuscode 200: no error
    :statuscode 404: there's no style
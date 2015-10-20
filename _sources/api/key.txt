Api key
=======

Add api key
-----------

.. http:post:: /api_key
    :noindex:
    :synopsis: Add api key

    **Example request**:

    .. sourcecode:: http

        POST /api_key HTTP/1.1
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

    :statuscode 200: no error

Remove api key
--------------

.. http:delete:: /api_key
    :noindex:
    :synopsis: Remove api key

    **Example request**:

    .. sourcecode:: http

        DELETE /api_key HTTP/1.1
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

    :statuscode 200: no error
    :statuscode 404: there's no api key
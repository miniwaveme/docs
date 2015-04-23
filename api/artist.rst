Artist
======

.. http:get:: /artist/(string:artist_id)

   Retreive information about an artist

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

      [
        {
          "id": 12345,
          "name": "Babar"
        }
      ]

   :query artist_id: artist id
   :statuscode 200: no error
   :statuscode 404: there's no artist
   

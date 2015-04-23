User
====

.. http:get:: /user/(string:user_id)

   Retreive information about a user

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
            "nickname": "mhor",
            "email": "maxime.horcholle@gmail.com",
            "gender": "male",
            "birthdate": "1987-05-18",
            "firstname": "maxime",
            "lastname": "horcholle"
        }


   :query artist_id: user id
   :statuscode 200: no error
   :statuscode 404: there's no user
   

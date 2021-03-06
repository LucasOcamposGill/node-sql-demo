once you do npm install you would be able to 

RUN "set DEBUG=myapp:* & npm start" in the terminal to start the application

the endpoint for the server will be at: http://localhost:3000

the possible api calls are listed below, you can use something like Postman 
in order to test the functionality of the APIs

User Api = Schema

        Create New User
                post    "http://localhost:3000/friends" 
                "FirstName"         TYPES-NVarChar
                "LastName"          TYPES-NVarChar
                "Email"             TYPES-NVarChar
                "Password"          TYPES-NVarChar
                "PasswordConfirm"   TYPES-NVarChar
                "AvatarUrl",        TYPES-Bit  
                "TenantId",         TYPES-Float
      		The create new user api will also encrypt the passwords using BCrypt and saved them that way into the database. 
      		It will also go ahead and send an email to the person registering as long as the SENDGRID key is set up.

        Update User
                put     "http://localhost:3000/friends" 
                "Id"                TYPES-Int
                "FirstName"         TYPES-NVarChar
                "LastName"          TYPES-NVarChar
                "Email"             TYPES-NVarChar
                "Password"          TYPES-NVarChar
                "PasswordConfirm"   TYPES-NVarChar
                "AvatarUrl",        TYPES-Bit  
                "TenantId",         TYPES-Float
      		he update new user api will also send an email letting the user know that the account has been updated as long as the SENDGRID key is set up

        Get User By Id
                get     "http://localhost:3000/friends/:id" 

        Delete User
                delete  "http://localhost:3000/friends/:id" 

Adresses Api = Schema

        Create New Adresses
                post    "http://localhost:3000/adresses" 
                "LineOne"               TYPES-NVarChar
                "SuiteNumber"           TYPES-NVarChar
                "City"                  TYPES-NVarChar
                "State"                 TYPES-NVarChar
                "PostalCode"            TYPES-NVarChar
                "IsActive",             TYPES-Bit  
                "Lat",                  TYPES-Float
                "Long",                 TYPES-Float

        Update Adresses
                put     "http://localhost:3000/adresses" 
                "Id"                TYPES-Int
                "LineOne"               TYPES-NVarChar
                "SuiteNumber"           TYPES-NVarChar
                "City"                  TYPES-NVarChar
                "State"                 TYPES-NVarChar
                "PostalCode"            TYPES-NVarChar
                "IsActive",             TYPES-Bit  
                "Lat",                  TYPES-Float
                "Long",                 TYPES-Float

        Get Random 5 Addresses
                get     "http://localhost:3000/friends/random5" 

        Get Adresses By Id
                get     "http://localhost:3000/friends/:id" 

        Delete Adresses
                delete  "http://localhost:3000/friends/:id" 

Friends Api = Schema

        Create New Friends
                post    "http://localhost:3000/friends" 
                "Title"                 TYPES-NVarChar
                "Bio"                   TYPES-NVarChar
                "Summary"               TYPES-NVarChar
                "Headline"              TYPES-NVarChar
                "Slug"                  TYPES-NVarChar
                "StatusId",             TYPES-Int  
                "PrimaryImage",         TYPES-NVarChar

        Update Friends
                put     "http://localhost:3000/Friends" 
                "Id"                TYPES-Int
                "Title"                 TYPES-NVarChar
                "Bio"                   TYPES-NVarChar
                "Summary"               TYPES-NVarChar
                "Headline"              TYPES-NVarChar
                "Slug"                  TYPES-NVarChar
                "StatusId",             TYPES-Int  
                "PrimaryImage",         TYPES-NVarChar

        Get Paginated Addresses
                get     "http://localhost:3000/friends/paginatedcall" 
                "pageIndex",            TYPES-Int  
                "pageSize",             TYPES-Int

        Search through Friends
                get     "http://localhost:3000/friends/search" 
                "query",                TYPES-NVarChar
                "pageIndex",            TYPES-Int  
                "pageSize",             TYPES-Int
        
        Get Friends By Id
                get     "http://localhost:3000/friends/:id" 

        Delete Friends
                delete  "http://localhost:3000/friends/:id" 



mongodb_roles = [
  {
    name    = "developer"
    role_db = "admin"
    privileges = [
      {
        target_db  = "admin"
        collection = ""
        actions    = ["collStats"]
      },
      {
        target_db  = "reporting"
        collection = ""
        actions = [
          "listCollections",
          "createCollection",
          "createIndex",
          "dropIndex",
          "insert",
          "remove",
          "renameCollectionSameDB",
          "update"
        ]
      },
    ]
  },
  {
    name    = "guest"
    role_db = "admin"
    privileges = [
      {
        target_db  = "admin"
        collection = "*"
        actions    = ["collStats"]
      },
      {
        target_db  = "reporting"
        collection = "*"
        actions = [
          "listCollections",
        ]
      },
    ]
  },
]

mongodb_users = [
  {
    name          = "ridwan"
    auth_database = "reporting"
    roles = [
      {
        name    = "developer",
        role_db = "admin"
      }
    ]
  },
  {
    name          = "fadjar"
    auth_database = "reporting"
    roles = [
      {
        name    = "guest",
        role_db = "admin"
      }
    ]
  },
  {
    name          = "septian"
    auth_database = "reporting"
    roles = [
      {
        name    = "readAnyDatabase",
        role_db = "admin"
      }
    ]
  },
  {
    name          = "bejo"
    auth_database = "reporting"
    roles         = []
  },
]

class Dog
attr_accessor :name, :breed, :id

def initialize(name: , breed:, id: nil)
    @name = name
    @breed = breed
    @id = id
    end

    def self.create_table
        #create sql command
        sql = "CREATE TABLE dog (
                id INTEGER PRIMARY KEY,
                name TEXT,
                breed TEXT
         )"
        #  execute sql command
        DB[:conn].execute(sql)
    end
    def self.drop_table
        # create sql command
        sql = "DROP TABLE IF EXISTS dog"
        # execute sql command
        DB[:conn].execute(sql)
    end

    def save

    end
        
end

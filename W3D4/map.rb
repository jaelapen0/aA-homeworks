class Map
    def initialize
        @ivar = []
    end

    def set(key,value)
        @ivar.each do |sub|
            if sub[0] == key
                return
            end
        end

        @ivar << [key,value]
    end

    def get(key)
        @ivar.each do |sub|
            if sub[0] == key
                return sub
            end
        end
        return nil
    end

    def delete(key)
        @ivar.each do |sub|
            if sub[0] == key
                @ivar.delete(sub)
                return true
            end
        end
        return false
    end

    def show
        @ivar
    end

end 
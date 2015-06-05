class Member
  @@members = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@members.length().+1
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@members
  end

  define_method(:save) do
    @@members.push(self)
  end

  define_singleton_method(:clear) do
    @@members = []
  end

  define_method(:id) do
    @id
  end

  define_method(:remove) do |person|
    @@members.each() do |mate|
      if mate.id().eql?(person.to_i())
        person = nil
      end
     end
   end
end

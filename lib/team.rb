class Team

  define_method(:initialize) do |group|
    @group = group
  end

  define_method(:group) do
    @group
  end
end

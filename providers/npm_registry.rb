npmrc_path = File.join(ENV['HOME'], '\\.npmrc')

action :generate do

    template npmrc_path do
      source '.npmrc.erb'
      variables(
        :params => new_resource
      )
    end

end

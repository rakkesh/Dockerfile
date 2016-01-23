require 'serverspec'
require 'docker'
require 'spec_helper'

describe "Dockerfile" do
    before(:all) do
        image = Docker::Image.build_from_dir('.')
        set :docker_image, image.id
    end

    include_examples 'collection::bootstrap'
    include_examples 'collection::base'
    include_examples 'collection::php5'
    include_examples 'collection::php-fpm5'
    include_examples 'collection::php-fpm5::local-only'
    include_examples 'collection::apache'
    include_examples 'collection::php-fpm5::webserver-test'

end

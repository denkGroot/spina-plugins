module Spina
  module Reviews
    class Engine < ::Rails::Engine
      isolate_namespace Spina

      initializer "register plugin" do
        plugin = ::Spina::Plugin.new
        plugin.name = "Reviews"
        plugin.config = Reviews.config
        ::Spina.register_plugin(plugin)
      end
    end
  end
end
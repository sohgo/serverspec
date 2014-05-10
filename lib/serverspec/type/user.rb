module Serverspec
  module Type
    class User < Base
      def exists?
        @runner.check_user(@name)
      end

      def belongs_to_group?(group)
        @runner.check_belonging_group(@name, group)
      end

      def has_uid?(uid)
        @runner.check_uid(@name, uid)
      end

      def has_home_directory?(path)
        @runner.check_home_directory(@name, path)
      end

      def has_login_shell?(shell)
        @runner.check_login_shell(@name, shell)
      end

      def has_authorized_key?(key)
        @runner.check_authorized_key(@name, key)
      end
    end
  end
end

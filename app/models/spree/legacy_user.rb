# frozen_string_literal: true

module Spree
  # Default implementation of User.
  #
  # @note This class is intended to be modified by extensions (ex.
  #   spree_auth_devise)
  class LegacyUser < Spree::Base
    include UserMethods
    include Spree::Preferences::Persistable

    preference :preference_password, :string
    preference :preference_name_user, :string

    self.table_name = 'spree_users'

    def self.model_name
      ActiveModel::Name.new Spree::LegacyUser, Spree, 'user'
    end

    attr_accessor :password
    attr_accessor :password_confirmation
  end
end

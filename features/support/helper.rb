require_relative 'helpers/email_helper'
require_relative 'helpers/tempmail_helper'
require_relative 'helpers/automation_helper'
require_relative 'helpers/business_types_helper'
require_relative 'helpers/business_categories_helper'
require_relative 'helpers/user_helper'

module Helper
  include EmailHelper
  include TempmailHelper
  include AutomationHelper
  include BusinessTypesHelper
  include BusinessCategoriesHelper
  include UserHelper
end

World(Helper)

# frozen_string_literal: true

module RequestHelpers
  def login_as(user)
    post("/login", params: { password: user.password })
  end

  def rendered
    Capybara.string(response.body)
  end
end

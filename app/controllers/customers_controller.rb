class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customersordered = Customer.order(:fullname)
  end

  def missing_email
    @customersmissingemail = Customer.where(email: "")
  end
end

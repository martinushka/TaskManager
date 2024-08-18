class Web::SessionsController < Web::ApplicationController
  def new
    @session = SessionForm.new
  end

  def create
    @session = SessionForm.new(session_params)

    if @session.valid?
      session[:user_id] = @session.user.id
      redirect_to :board
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :new_session
  end

  private

  def session_params
    params.require(:session_form).permit(:email, :password)
  end
end
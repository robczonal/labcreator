require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AnalysesController do

  # This should return the minimal set of attributes required to create a valid
  # Analysis. As you add validations to Analysis, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AnalysesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all analyses as @analyses" do
      analysis = Analysis.create! valid_attributes
      get :index, {}, valid_session
      assigns(:analyses).should eq([analysis])
    end
  end

  describe "GET show" do
    it "assigns the requested analysis as @analysis" do
      analysis = Analysis.create! valid_attributes
      get :show, {:id => analysis.to_param}, valid_session
      assigns(:analysis).should eq(analysis)
    end
  end

  describe "GET new" do
    it "assigns a new analysis as @analysis" do
      get :new, {}, valid_session
      assigns(:analysis).should be_a_new(Analysis)
    end
  end

  describe "GET edit" do
    it "assigns the requested analysis as @analysis" do
      analysis = Analysis.create! valid_attributes
      get :edit, {:id => analysis.to_param}, valid_session
      assigns(:analysis).should eq(analysis)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Analysis" do
        expect {
          post :create, {:analysis => valid_attributes}, valid_session
        }.to change(Analysis, :count).by(1)
      end

      it "assigns a newly created analysis as @analysis" do
        post :create, {:analysis => valid_attributes}, valid_session
        assigns(:analysis).should be_a(Analysis)
        assigns(:analysis).should be_persisted
      end

      it "redirects to the created analysis" do
        post :create, {:analysis => valid_attributes}, valid_session
        response.should redirect_to(Analysis.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved analysis as @analysis" do
        # Trigger the behavior that occurs when invalid params are submitted
        Analysis.any_instance.stub(:save).and_return(false)
        post :create, {:analysis => {}}, valid_session
        assigns(:analysis).should be_a_new(Analysis)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Analysis.any_instance.stub(:save).and_return(false)
        post :create, {:analysis => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested analysis" do
        analysis = Analysis.create! valid_attributes
        # Assuming there are no other analyses in the database, this
        # specifies that the Analysis created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Analysis.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => analysis.to_param, :analysis => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested analysis as @analysis" do
        analysis = Analysis.create! valid_attributes
        put :update, {:id => analysis.to_param, :analysis => valid_attributes}, valid_session
        assigns(:analysis).should eq(analysis)
      end

      it "redirects to the analysis" do
        analysis = Analysis.create! valid_attributes
        put :update, {:id => analysis.to_param, :analysis => valid_attributes}, valid_session
        response.should redirect_to(analysis)
      end
    end

    describe "with invalid params" do
      it "assigns the analysis as @analysis" do
        analysis = Analysis.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Analysis.any_instance.stub(:save).and_return(false)
        put :update, {:id => analysis.to_param, :analysis => {}}, valid_session
        assigns(:analysis).should eq(analysis)
      end

      it "re-renders the 'edit' template" do
        analysis = Analysis.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Analysis.any_instance.stub(:save).and_return(false)
        put :update, {:id => analysis.to_param, :analysis => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested analysis" do
      analysis = Analysis.create! valid_attributes
      expect {
        delete :destroy, {:id => analysis.to_param}, valid_session
      }.to change(Analysis, :count).by(-1)
    end

    it "redirects to the analyses list" do
      analysis = Analysis.create! valid_attributes
      delete :destroy, {:id => analysis.to_param}, valid_session
      response.should redirect_to(analyses_url)
    end
  end

end

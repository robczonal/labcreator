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

describe EquipcatsController do

  # This should return the minimal set of attributes required to create a valid
  # Equipcat. As you add validations to Equipcat, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EquipcatsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all equipcats as @equipcats" do
      equipcat = Equipcat.create! valid_attributes
      get :index, {}, valid_session
      assigns(:equipcats).should eq([equipcat])
    end
  end

  describe "GET show" do
    it "assigns the requested equipcat as @equipcat" do
      equipcat = Equipcat.create! valid_attributes
      get :show, {:id => equipcat.to_param}, valid_session
      assigns(:equipcat).should eq(equipcat)
    end
  end

  describe "GET new" do
    it "assigns a new equipcat as @equipcat" do
      get :new, {}, valid_session
      assigns(:equipcat).should be_a_new(Equipcat)
    end
  end

  describe "GET edit" do
    it "assigns the requested equipcat as @equipcat" do
      equipcat = Equipcat.create! valid_attributes
      get :edit, {:id => equipcat.to_param}, valid_session
      assigns(:equipcat).should eq(equipcat)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Equipcat" do
        expect {
          post :create, {:equipcat => valid_attributes}, valid_session
        }.to change(Equipcat, :count).by(1)
      end

      it "assigns a newly created equipcat as @equipcat" do
        post :create, {:equipcat => valid_attributes}, valid_session
        assigns(:equipcat).should be_a(Equipcat)
        assigns(:equipcat).should be_persisted
      end

      it "redirects to the created equipcat" do
        post :create, {:equipcat => valid_attributes}, valid_session
        response.should redirect_to(Equipcat.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved equipcat as @equipcat" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipcat.any_instance.stub(:save).and_return(false)
        post :create, {:equipcat => {}}, valid_session
        assigns(:equipcat).should be_a_new(Equipcat)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Equipcat.any_instance.stub(:save).and_return(false)
        post :create, {:equipcat => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested equipcat" do
        equipcat = Equipcat.create! valid_attributes
        # Assuming there are no other equipcats in the database, this
        # specifies that the Equipcat created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Equipcat.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => equipcat.to_param, :equipcat => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested equipcat as @equipcat" do
        equipcat = Equipcat.create! valid_attributes
        put :update, {:id => equipcat.to_param, :equipcat => valid_attributes}, valid_session
        assigns(:equipcat).should eq(equipcat)
      end

      it "redirects to the equipcat" do
        equipcat = Equipcat.create! valid_attributes
        put :update, {:id => equipcat.to_param, :equipcat => valid_attributes}, valid_session
        response.should redirect_to(equipcat)
      end
    end

    describe "with invalid params" do
      it "assigns the equipcat as @equipcat" do
        equipcat = Equipcat.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipcat.any_instance.stub(:save).and_return(false)
        put :update, {:id => equipcat.to_param, :equipcat => {}}, valid_session
        assigns(:equipcat).should eq(equipcat)
      end

      it "re-renders the 'edit' template" do
        equipcat = Equipcat.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Equipcat.any_instance.stub(:save).and_return(false)
        put :update, {:id => equipcat.to_param, :equipcat => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested equipcat" do
      equipcat = Equipcat.create! valid_attributes
      expect {
        delete :destroy, {:id => equipcat.to_param}, valid_session
      }.to change(Equipcat, :count).by(-1)
    end

    it "redirects to the equipcats list" do
      equipcat = Equipcat.create! valid_attributes
      delete :destroy, {:id => equipcat.to_param}, valid_session
      response.should redirect_to(equipcats_url)
    end
  end

end
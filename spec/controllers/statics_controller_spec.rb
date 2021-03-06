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

describe StaticsController do

  # This should return the minimal set of attributes required to create a valid
  # Static. As you add validations to Static, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StaticsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all statics as @statics" do
      static = Static.create! valid_attributes
      get :index, {}, valid_session
      assigns(:statics).should eq([static])
    end
  end

  describe "GET show" do
    it "assigns the requested static as @static" do
      static = Static.create! valid_attributes
      get :show, {:id => static.to_param}, valid_session
      assigns(:static).should eq(static)
    end
  end

  describe "GET new" do
    it "assigns a new static as @static" do
      get :new, {}, valid_session
      assigns(:static).should be_a_new(Static)
    end
  end

  describe "GET edit" do
    it "assigns the requested static as @static" do
      static = Static.create! valid_attributes
      get :edit, {:id => static.to_param}, valid_session
      assigns(:static).should eq(static)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Static" do
        expect {
          post :create, {:static => valid_attributes}, valid_session
        }.to change(Static, :count).by(1)
      end

      it "assigns a newly created static as @static" do
        post :create, {:static => valid_attributes}, valid_session
        assigns(:static).should be_a(Static)
        assigns(:static).should be_persisted
      end

      it "redirects to the created static" do
        post :create, {:static => valid_attributes}, valid_session
        response.should redirect_to(Static.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved static as @static" do
        # Trigger the behavior that occurs when invalid params are submitted
        Static.any_instance.stub(:save).and_return(false)
        post :create, {:static => {  }}, valid_session
        assigns(:static).should be_a_new(Static)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Static.any_instance.stub(:save).and_return(false)
        post :create, {:static => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested static" do
        static = Static.create! valid_attributes
        # Assuming there are no other statics in the database, this
        # specifies that the Static created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Static.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => static.to_param, :static => { "these" => "params" }}, valid_session
      end

      it "assigns the requested static as @static" do
        static = Static.create! valid_attributes
        put :update, {:id => static.to_param, :static => valid_attributes}, valid_session
        assigns(:static).should eq(static)
      end

      it "redirects to the static" do
        static = Static.create! valid_attributes
        put :update, {:id => static.to_param, :static => valid_attributes}, valid_session
        response.should redirect_to(static)
      end
    end

    describe "with invalid params" do
      it "assigns the static as @static" do
        static = Static.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Static.any_instance.stub(:save).and_return(false)
        put :update, {:id => static.to_param, :static => {  }}, valid_session
        assigns(:static).should eq(static)
      end

      it "re-renders the 'edit' template" do
        static = Static.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Static.any_instance.stub(:save).and_return(false)
        put :update, {:id => static.to_param, :static => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested static" do
      static = Static.create! valid_attributes
      expect {
        delete :destroy, {:id => static.to_param}, valid_session
      }.to change(Static, :count).by(-1)
    end

    it "redirects to the statics list" do
      static = Static.create! valid_attributes
      delete :destroy, {:id => static.to_param}, valid_session
      response.should redirect_to(statics_url)
    end
  end

end

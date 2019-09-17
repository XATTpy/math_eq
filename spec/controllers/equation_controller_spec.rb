require 'rails_helper'


describe EquationController do
    describe 'index action' do
        it 'must show "index" page' do
            get :index
            expect(response.status).to eq(200)
        end
    end

    describe 'create action' do
        it 'must show "create" page' do
            post :create
            expect(response.status).to eq(200)
        end
    end

    describe 'show action' do
        it 'must show "show" page' do
            put :create
            expect(response.status).to eq(200)
        end
    end
end
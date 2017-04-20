class ScriptController < ApplicationController
        def list
                @scripts = Script.all
        end

        def show
                @script = Script.find(params[:id])
        end

        def new
                @script = Script.new
                @clients = Client.all
        end

        def create
                @script = Script.new(script_params)

                if @script.save
                        redirect_to :action => 'list'
                else
                        @clients = Client.all
                        render :action => 'new'
                end
        end

        def script_params
                params.require(:scripts).permit(:input, :description, created_at)

        def edit
        end

        def update
                @script = Script.find(params[:id])

                if @script.update_attributes(script_param)
                        redirect_to :action => 'show', :id => @script
                else
                        @clients = Client.all
                        render :action => 'edit'
                end
        end

        def script_param
                params.require(:book).permit(:input, :description, :subject_id, :created_at)
        end
        def delete
                Script.find(params[:id]).destroy
                redirect_to :action => 'list'
        end
        def show_clients

Rails.application.routes.draw do
        get 'script/list'
        get 'script/new'
        post 'script/create'
        patch 'script/update'
        get 'script/list'
        get 'script/show'
        get 'script/edit'
        get 'script/delete'
        get 'script/update'
        get 'script/show_clients'
end

